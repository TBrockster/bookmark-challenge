require 'pg'

feature "Bookmark" do
  scenario "add bookmarks" do
    visit('/')
    click_button("Add bookmarks")
    fill_in "Bookmark", with: "www.amazon.com"
    fill_in "Title", with: "Amazon"
    click_button("Submit")
    expect(page).to have_content("Amazon")
  end
end
