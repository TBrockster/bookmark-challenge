require 'sinatra'
require_relative 'lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    # p ENV
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmarks' do
    erb :add_bookmark
  end

  post "/redirect_bookmarks" do
    Bookmark.add(params[:Bookmark])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
