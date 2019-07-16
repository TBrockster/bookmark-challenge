feature 'deletes bookmarks' do
  scenario 'deletes bookmarks' do
    Bookmark.add(url: "http://www.amazon.com", title: "Amazon")
    visit('/')
    click_button('Delete bookmark')
    fill_in 'bookmark', with: 'Amazon'
    click_button('submit')
    expect(page).not_to have_content('Amazon')
  end
end
