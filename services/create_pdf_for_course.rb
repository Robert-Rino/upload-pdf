# Service object to create new pdf file for course
class CreatePdfForCourse
  def self.call(course:, slide_name:, document:)
    saved_file = course.add_pdf(slide_name: slide_name)
    saved_file.document = document
    saved_file.save
  end
end
