require "application_system_test_case"

class RantsTest < ApplicationSystemTestCase
  setup do
    @rant = rants(:one)
  end

  test "visiting the index" do
    visit rants_url
    assert_selector "h1", text: "Rants"
  end

  test "creating a Rant" do
    visit rants_url
    click_on "New Rant"

    fill_in "Description", with: @rant.description
    fill_in "Geofence", with: @rant.geofence_id
    fill_in "Inapropiate", with: @rant.inapropiate
    fill_in "Like", with: @rant.like
    fill_in "Status", with: @rant.status
    fill_in "Title", with: @rant.title
    fill_in "Unlike", with: @rant.unlike
    fill_in "User", with: @rant.user_id
    check "Visibility" if @rant.visibility
    click_on "Create Rant"

    assert_text "Rant was successfully created"
    click_on "Back"
  end

  test "updating a Rant" do
    visit rants_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rant.description
    fill_in "Geofence", with: @rant.geofence_id
    fill_in "Inapropiate", with: @rant.inapropiate
    fill_in "Like", with: @rant.like
    fill_in "Status", with: @rant.status
    fill_in "Title", with: @rant.title
    fill_in "Unlike", with: @rant.unlike
    fill_in "User", with: @rant.user_id
    check "Visibility" if @rant.visibility
    click_on "Update Rant"

    assert_text "Rant was successfully updated"
    click_on "Back"
  end

  test "destroying a Rant" do
    visit rants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rant was successfully destroyed"
  end
end
