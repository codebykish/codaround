require 'rails_helper'

feature "Home page" do

  scenario "visit" do
    visit "/"
    expect(page).to have_title "Welcome to Codaround"
  end

  scenario "visit" do
    visit "/"
    expect(page).to have_css "h1", text: "Welcome to Codaround"
  end

  scenario "visit" do
    visit "/"
    expect(page).to have_text "Sign in"
  end

  scenario "visit" do
    visit "/"
    expect(page).to have_text "Sign up"
  end


end
