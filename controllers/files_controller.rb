class PdfUploadAPI < Sinatra::Base
  get '/api/v1/files/?' do
    'file controllers root'
  end

  post '/api/v1/courses/:course_id/pdfs/?' do
    begin
      data = JSON.parse(request.body.read)
      course = Course[params[:course_id]]
      saved_file = CreatePdfForCourse.call(
      course: course,
      slide_name: data['slide_name'],
      document: data['document']
      )
    rescue => e
      logger.info "FAILED to create new file: #{e.inspect}"
      halt 400
    end

    status 201
  end
end
