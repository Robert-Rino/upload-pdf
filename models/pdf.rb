require 'sequel'
require 'base64'
require 'json'

class Pdf < Sequel::Model
  plugin :timestamps, :create=>:create_at, :update=>:update_at, update_on_create: true
  set_allowed_columns :slide_name

  many_to_one :courses

  def document=(doc_plaintext)
   self.document_plain = doc_plaintext
  end

  def to_json(options = {})
    JSON({
            id: id,
            slide_name: slide_name,
            document_plain: document_plain
          },
         options)
  end
end
