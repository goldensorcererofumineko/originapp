class Dategraph < ApplicationRecord
  enum activity_type: {
    sleep: 'sleep',
    eat: 'eat',
    work: 'work',
    study: 'study',
    commute: 'commute',
    entertainment: 'entertainment',
    personal: 'personal'
  }

  validates :activity_type, presence: true
  validates :s_time, presence: true
  validates :e_time, presence: true

  has_one :activity_detail, dependent: :destroy

  accepts_nested_attributes_for :activity_detail
  validate :validate_time_overlap
  validate :validate_total_hours

  private

  def validate_time_overlap
    # 同じ日において、他の活動と時間が重なっていないかを確認
    if overlapping_activities.exists?
      errors.add(:base, "時間が他の活動と重複しています")
    end
  end

  def validate_total_hours
    # 24時間を超えていないかを確認
    if total_hours > 24
      errors.add(:base, "合計時間は24時間を超えてはいけません")
    end
  end

  def overlapping_activities
    DailyActivity.where(
      "(? <= end_time) AND (? >= start_time) AND id != ?",
      start_time,
      end_time,
      id || 0
    )
  end

  def total_hours
    activities = DailyActivity.where(activity_type: activity_type)
    activities.sum { |a| (a.end_time - a.start_time) / 3600 }
  end
end
