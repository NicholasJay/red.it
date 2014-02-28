require 'spec_helper'

describe "user can signup" do
  let(:user) { FactoryGirl.build(:user) }

it "will signup a user" do
    # Setup

    # Workflow for feature
    visit root_path
    click_link "Signup"
    fill_in "user_username", with: user.username
    fill_in "user_email", with: user.email
    fill_in "user_password", with: "1234"
    fill_in "user_password_confirmation", with: "1234"
    click_button "Signup"
    # Expectations
      expect(page).to have_content user.username

  end

end