class PdfUploadAPI < Sinatra::Base
  get '/api/v1/courses/?' do
    'course management'
  end

  post '/api/v1/courses/new/?' do
    begin
      data = JSON.parse(request.body.read)
      new_course = CreateCourse.call(
      course_name: data['course_name'])
    rescue => e
      logger.info "FAILED to create new account: #{e.inspect}"
      halt 400
    end
    
    status 201
  end
end
