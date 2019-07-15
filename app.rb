require 'sinatra'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = ["http://www.github.com"]
    erb :bookmarks
  end

  run! if app_file == $0
end
