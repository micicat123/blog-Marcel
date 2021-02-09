require "application_system_test_case"

class PostaTest < ApplicationSystemTestCase
  setup do
    @postum = posta(:one)
  end

  test "visiting the index" do
    visit posta_url
    assert_selector "h1", text: "Posta"
  end

  test "creating a Postum" do
    visit posta_url
    click_on "New Postum"

    fill_in "Body", with: @postum.body
    fill_in "Title", with: @postum.title
    click_on "Create Postum"

    assert_text "Postum was successfully created"
    click_on "Back"
  end

  test "updating a Postum" do
    visit posta_url
    click_on "Edit", match: :first

    fill_in "Body", with: @postum.body
    fill_in "Title", with: @postum.title
    click_on "Update Postum"

    assert_text "Postum was successfully updated"
    click_on "Back"
  end

  test "destroying a Postum" do
    visit posta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postum was successfully destroyed"
  end
end
