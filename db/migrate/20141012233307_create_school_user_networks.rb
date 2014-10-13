class CreateSchoolUserNetworks < ActiveRecord::Migration
  def change
    create_table :school_user_networks do |t|
      t.belongs_to :school_user
      t.belongs_to :network

      t.timestamps
    end
  end
end
