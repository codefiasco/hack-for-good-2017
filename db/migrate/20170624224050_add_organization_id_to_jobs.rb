class AddOrganizationIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :organization_id, :integer
  end
end
