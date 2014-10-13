class CreateSchoolNetworks < ActiveRecord::Migration
  def change
    create_table :school_networks do |t|
      t.belongs_to :school
      t.belongs_to :network
      t.boolean :archived
      t.timestamps
    end
  end
end
