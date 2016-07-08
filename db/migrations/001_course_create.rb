require 'sequel'

Sequel.migration do
  change do
    create_table(:course_datas) do
      primary_key :id
      String :course_name
      DateTime :create_at
      DateTime :update_at
    end
  end
end