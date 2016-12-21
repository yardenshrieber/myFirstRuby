require 'spec_helper'

describe "Creating todo lists" do
  it "redirects to the todo list index page on success" do
    visit "/todo_lists"
    click "New Todo list"
    expect(page).to have_content("New todo_list")

    fill_in "Title", with: "My todo list"
    fill_in "Description", with: "This is what i'm going today"
    click_button "Create Todo list"
  end
end