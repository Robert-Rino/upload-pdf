require 'sinatra'
require 'json'
require 'rack/ssl-enforcer'

# File Sharing Web Service
class PdfUploadAPI < Sinatra::Base
  enable :logging

  get '/?' do
    'PDF api service is up and running at /api/v1'
  end
end
