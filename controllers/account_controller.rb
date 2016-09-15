class PdfUploadAPI < Sinatra::Base
  get '/api/v1/account/?' do
    'account controller'
  end

  post '/api/v1/account/regular/new/?' do
    begin
      data = JSON.parse(request.body.read)
      new_course = CreateAccount.call(
      username: data['username'],
      email: data['email'],
      password: data['password'])
    rescue => e
      logger.info "FAILED to create new account: #{e.inspect}"
      halt 400
    end

    status 201
  end
end
