require 'sequel'

Sequel.migration do
  change do
    create_join_table(collaborator_id: :base_accounts, course_id: :courses)
  end
end
