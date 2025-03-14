require 'rails_helper'

RSpec.describe "Logging In" do
  it "can log in with valid credentials" do
    user = User.create(email: "mOVIElover@example.com", password: "test")

    visit root_path

    click_on "Log In!"

    expect(current_path).to eq(login_path)

    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_on "Log In"

    expect(current_path).to eq(root_path)

    expect(page).to have_content("Welcome, #{user.email}")
  end

  it "cannot log in with bad credentials" do
    user = User.create(email: "mOVIElover@example.com", password: "test")
  
    # we don't have to go through root_path and click the "I have an account" link any more
    visit login_path
  
    fill_in :email, with: user.email
    fill_in :password, with: "incorrect password"
  
    click_on "Log In"
  
    expect(current_path).to eq(login_path)
  
    expect(page).to have_content("Incorrect email or password.")
  end
end