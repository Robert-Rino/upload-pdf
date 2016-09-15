require 'sequel'

Sequel.migration do
  change do
    create_table(:courses) do
      primary_key :id
      foreign_key :owner_id, :base_accounts
      String :course_name
      DateTime :create_at
      DateTime :update_at

      unieue [:owner_id, :course_name]
    end
  end
end
