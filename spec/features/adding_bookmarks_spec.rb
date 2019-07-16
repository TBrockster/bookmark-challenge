require 'pg'

feature "Bookmark" do
  scenario "add bookmarks" do
    visit('/')
    click_button("Add bookmarks")
    fill_in "Bookmark", with: "www.amazon.com"
    click_button("Submit")
    expect(page).to have_content("www.amazon.com")
  end
end
