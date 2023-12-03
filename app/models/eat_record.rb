class EatRecord < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :food_item

  validate :validate_meal_fields

  private

  def validate_meal_fields
    validate_fields(:breakfast, meal_time_breakfast, food_item_id_breakfast)
    validate_fields(:lunch, meal_time_lunch, food_item_id_lunch)
    validate_fields(:dinner, meal_time_dinner, food_item_id_dinner)
    validate_fields(:snack, meal_time_snack, food_item_id_snack)
  end

  def validate_fields(meal_type, meal_time, food_item_id)
    if meal_time.present? && food_item_id.blank?
      errors.add(:"food_item_id_#{meal_type}", "can't be blank if meal_time is present")
    end

    if food_item_id.present? && meal_time.blank?
      errors.add(:"meal_time_#{meal_type}", "can't be blank if food_item_id is present")
    end
  end
end