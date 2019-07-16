require 'bookmark'

describe Bookmark do
  let(:bookmark) {described_class}
  describe '.all' do
    it "calls all bookmarks" do
      Bookmark.add('http://www.makersacademy.com')
      Bookmark.add('http://www.destroyallsoftware.com')
      Bookmark.add('http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
  describe '#add' do
    it 'adds a bookmark' do
      Bookmark.add('www.amazon.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('www.amazon.com')
    end
  end
end
