require "application_system_test_case"

class KosiarkasTest < ApplicationSystemTestCase
  setup do
    @kosiarka = kosiarkas(:one)
  end

  test "visiting the index" do
    visit kosiarkas_url
    assert_selector "h1", text: "Kosiarkas"
  end

  test "creating a Kosiarka" do
    visit kosiarkas_url
    click_on "New Kosiarka"

    click_on "Create Kosiarka"

    assert_text "Kosiarka was successfully created"
    click_on "Back"
  end

  test "updating a Kosiarka" do
    visit kosiarkas_url
    click_on "Edit", match: :first

    click_on "Update Kosiarka"

    assert_text "Kosiarka was successfully updated"
    click_on "Back"
  end

  test "destroying a Kosiarka" do
    visit kosiarkas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kosiarka was successfully destroyed"
  end
end
