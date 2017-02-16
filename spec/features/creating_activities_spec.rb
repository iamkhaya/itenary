require "rails_helper"
RSpec.feature "Users can create new projects" do
  scenario "with valid attributes" do
    visit "/activities/new"

    fill_in "Name", with: "Sublime Text 3"
    fill_in "Description", with: "A text editor for everyone"
    click_button "Add new Activity"
    expect(page).to have_content "Chillz and Thrillz Become a Partner"
  end

  scenario "Title is correct" do
    activity = Activity.find_by_id(1)
    expect(page.current_url).to eq activity_url(activity)
    title = "Itenarator"
    expect(page).to have_title title
  end
end
