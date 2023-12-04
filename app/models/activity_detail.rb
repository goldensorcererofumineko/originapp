class ActivityDetail < ApplicationRecord
  belongs_to :daily_activity

  # ここに各活動に対する詳細情報の属性を追加します
end