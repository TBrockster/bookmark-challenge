require 'bookmark'

describe Bookmark do
  let(:bookmark) {described_class}
  describe '.all' do
    it "calls all bookmarks" do
    expect(bookmark.all).to include("http://www.github.com")
    expect(bookmark.all).to include("http://www.google.com")
    expect(bookmark.all).to include("http://www.makersacademy.com")
    end
  end
end
