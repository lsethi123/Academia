class CreateSchoolUsers < ActiveRecord::Migration
  def change
    create_table :school_users do |t|
      t.string :name
      t.string :email
      t.string :username      
      t.string :password
      t.string :confirm_password
      t.datetime :last_login_date

      t.timestamps
    end
  end
end
