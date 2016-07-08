require 'sequel'

Sequel.migration do
  change do
    create_table(:pdf_create) do
      foreign_key :course_id
      String :slide_name, null: false
      String :document_plain, text: true
      DateTime :create_at
      DateTime :update_at

      unique [:course_id, :slide_name]
    end
  end
end