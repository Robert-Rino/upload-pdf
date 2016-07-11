require 'sequel'
require 'base64'
require 'json'

# Holds and persists an account's information
class Pdf < Sequel::Model
  plugin :timestamps, :create=>:create_at, :update=>:update_at, update_on_create: true

  many_to_one :courses

  def to_json(options = {})
    JSON({
            id: id,
            slide_name: slide_name,
            document_plain: document_plain
          },
         options)
  end
end
