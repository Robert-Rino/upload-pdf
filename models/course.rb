require 'sequel'
require 'base64'
require 'json'

# Holds and persists an account's information
class Course < Sequel::Model
  plugin :timestamps, :create=>:create_at, :update=>:update_at, update_or_create: true
  set_allowed_columns :course_name

  one_to_many :pdfs
  many_to_one :accounts

  plugin :association_dependencies, pdfs: :destroy

  def to_json(options = {})
    JSON({  id: id,
            course_name: course_name
          },
         options)
  end
end
