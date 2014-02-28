require 'spec_helper'

describe "user can signup" do
  let(:user) { FactoryGirl.create(:user) }

it "will signup a user" do
    # Setup

    # Workflow for feature
    visit root_path
    click_link "Signup"
    fill_in "username", with: user.username
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    fill_in "password_confirmation", with: user.password_confirmation
    click_button "Signup"
    # save_and_open_page

    # Expectations
      expect(page).to have_content user.username

  end

end