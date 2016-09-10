require 'sequel'

Sequel.migration do
  change do
    create_table(:pdfs) do
      primary_key :id
      foreign_key :course_id
      String :slide_name, null: false
      String :document_plain, text: true
      DateTime :create_at
      DateTime :update_at
    end
  end
end
