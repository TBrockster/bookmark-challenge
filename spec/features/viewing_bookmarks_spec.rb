require 'pg'

feature "Bookmark" do
  scenario "views bookmarks" do
    # connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.add(url: 'http://www.makersacademy.com', title: 'Makers')

    visit('/')
    click_button("View bookmarks")
    expect(page).to have_content("Makers")
  end
end