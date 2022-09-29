require "application_system_test_case"

class ShopthelooksTest < ApplicationSystemTestCase
  setup do
    @shopthelook = shopthelooks(:one)
  end

  test "visiting the index" do
    visit shopthelooks_url
    assert_selector "h1", text: "Shopthelooks"
  end

  test "should create shopthelook" do
    visit shopthelooks_url
    click_on "New shopthelook"

    fill_in "Description", with: @shopthelook.description
    fill_in "Url", with: @shopthelook.url
    fill_in "Url1", with: @shopthelook.url1
    fill_in "Url2", with: @shopthelook.url2
    click_on "Create Shopthelook"

    assert_text "Shopthelook was successfully created"
    click_on "Back"
  end

  test "should update Shopthelook" do
    visit shopthelook_url(@shopthelook)
    click_on "Edit this shopthelook", match: :first

    fill_in "Description", with: @shopthelook.description
    fill_in "Url", with: @shopthelook.url
    fill_in "Url1", with: @shopthelook.url1
    fill_in "Url2", with: @shopthelook.url2
    click_on "Update Shopthelook"

    assert_text "Shopthelook was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopthelook" do
    visit shopthelook_url(@shopthelook)
    click_on "Destroy this shopthelook", match: :first

    assert_text "Shopthelook was successfully destroyed"
  end
end
