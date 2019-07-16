require 'pg'

feature "Bookmark" do
  scenario "views bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit('/')
    click_button("View bookmarks")
    expect(page).to have_content("ttp://www.google.com")
  end
end