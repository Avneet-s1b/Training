require "application_system_test_case"

class MagzinesTest < ApplicationSystemTestCase
  setup do
    @magzine = magzines(:one)
  end

  test "visiting the index" do
    visit magzines_url
    assert_selector "h1", text: "Magzines"
  end

  test "should create magzine" do
    visit magzines_url
    click_on "New magzine"

    fill_in "Name", with: @magzine.name
    click_on "Create Magzine"

    assert_text "Magzine was successfully created"
    click_on "Back"
  end

  test "should update Magzine" do
    visit magzine_url(@magzine)
    click_on "Edit this magzine", match: :first

    fill_in "Name", with: @magzine.name
    click_on "Update Magzine"

    assert_text "Magzine was successfully updated"
    click_on "Back"
  end

  test "should destroy Magzine" do
    visit magzine_url(@magzine)
    click_on "Destroy this magzine", match: :first

    assert_text "Magzine was successfully destroyed"
  end
end
