require 'spec_helper'

describe "user can signup" do
  let(:user) { FactoryGirl.create(:user) }


  it "will login a existing user and authorize" do
    # Setup
    visit root_path

    # Workflow for feature
    click_link "login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
    # Expectations
    expect(page).to have_content user.username
    expect @current_user == user
  end


end