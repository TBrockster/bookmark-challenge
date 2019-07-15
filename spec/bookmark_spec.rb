require 'bookmark'

describe Bookmark do
  let(:bookmark) {described_class}
  describe '.all' do
    it "calls all bookmarks" do
    expect(bookmark.all).to include("http://www.github.com")
    end
  end
end
