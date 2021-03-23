require "application_system_test_case"

class VcmksTest < ApplicationSystemTestCase
  setup do
    @vcmk = vcmks(:one)
  end

  test "visiting the index" do
    visit vcmks_url
    assert_selector "h1", text: "Vcmks"
  end

  test "creating a Vcmk" do
    visit vcmks_url
    click_on "New Vcmk"

    fill_in "Email", with: @vcmk.email
    fill_in "First name", with: @vcmk.first_name
    fill_in "Last name", with: @vcmk.last_name
    fill_in "Phone", with: @vcmk.phone
    fill_in "Twitter", with: @vcmk.twitter
    click_on "Create Vcmk"

    assert_text "Vcmk was successfully created"
    click_on "Back"
  end

  test "updating a Vcmk" do
    visit vcmks_url
    click_on "Edit", match: :first

    fill_in "Email", with: @vcmk.email
    fill_in "First name", with: @vcmk.first_name
    fill_in "Last name", with: @vcmk.last_name
    fill_in "Phone", with: @vcmk.phone
    fill_in "Twitter", with: @vcmk.twitter
    click_on "Update Vcmk"

    assert_text "Vcmk was successfully updated"
    click_on "Back"
  end

  test "destroying a Vcmk" do
    visit vcmks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vcmk was successfully destroyed"
  end
end
