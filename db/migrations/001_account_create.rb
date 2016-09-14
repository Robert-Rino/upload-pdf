require 'sequel'

Sequel.migration do
  change do
    create_table(:accounts) do
      primary_key :id
      String :type
      String :username, null: false
      String :email, null: false, unique: true
      String :password_hash
      DateTime :create_at
      DateTime :update_at

      unique [:type, :username]
    end
  end
end
