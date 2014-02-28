require 'spec_helper'

describe "user can signup" do
  let(:user) { FactoryGirl.create(:user) }

  it "will let a user submit a url" do
    # Setup
    login(user)
    # Worflow for feature
    click_link "add story"

    # Expectations
    expect(page).to have_content "Url"

  end

  def login(user)
    visit "/login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end


end