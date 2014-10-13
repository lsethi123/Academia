class AddRoleToSchoolNetwork < ActiveRecord::Migration
  def change
    add_column :school_networks, :role, :string 
  end
end
