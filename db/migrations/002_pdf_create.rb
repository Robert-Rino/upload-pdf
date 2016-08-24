require 'sequel'

Sequel.migration do
  change do
    create_table(:pdfs) do
      foreign_key :course_id, :courses
      String :slide_name, null: false
      String :document_plain, text: true
      DateTime :create_at
      DateTime :update_at

      unique [:course_id, :slide_name]
    end
  end
end
