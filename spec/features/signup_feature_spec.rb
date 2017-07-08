require 'rails_helper'

describe "the sign up process" do
  user = FactoryGirl.build(:user)

  it "allows a user to create an account" do
    visit root_path
    click_link 'Sign up'
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
  end

  it "throws an error when a user tries to create an account incorrectly" do
    visit root_path
    click_link 'Sign up'
    click_button 'Sign Up'
    expect(page).to have_content "There was a problem signing up."
  end

end
