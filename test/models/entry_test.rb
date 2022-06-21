require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", calories: 100, carbohydrates: 100, proteins: 100,
    fats: 100)
    assert entry.save
  end
  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 100, proteins: 100,
    fats: 100)
    assert_not entry.save
  end
  test "should not save entry without carbohydrates" do
    entry = Entry.new(meal_type: "Breakfast", calories: 100, proteins: 100,
    fats: 100)
    assert_not entry.save
  end
  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "Breakfast", calories: 100, carbohydrates: 100,
    fats: 100)
    assert_not entry.save
  end
end
