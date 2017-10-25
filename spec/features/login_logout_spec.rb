require 'rails_helper'

feature "User logs in and logs out" do

  scenario "with correct details", js: true do

    create(:user, email: "someone@example.tld", password: "somepassword")

    visit "/"

    click_link "Log in"
