require 'sinatra'
require 'json'

# File Sharing Web Service
class PdfUploadAPI < Sinatra::Base
  enable :logging

  get '/?' do
    'PDF api service is up and running at /api/v1'
  end
end
