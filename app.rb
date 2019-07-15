require 'sinatra'
require_relative 'lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
