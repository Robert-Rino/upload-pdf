# Service object to create new accounts using all columns
class CreateCourse
  def self.call(course_name:)
    course = Course.new(course_name: course_name)
    course.course_name = course_name
    course.save
  end
end
