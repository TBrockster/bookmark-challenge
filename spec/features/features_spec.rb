feature "Bookmark" do
  scenario "views bookmarks" do
    visit('/')
    click_button("View bookmarks")
    expect(page).to have_content("http://www.github.com")
  end
end
