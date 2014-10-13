# == Schema Information
#
# Table name: school_users
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  username         :string(255)
#  password         :string(255)
#  confirm_password :string(255)
#  last_login_date  :datetime
#  created_at       :datetime
#  updated_at       :datetime
#

class SchoolUser < ActiveRecord::Base

  has_many :school_user_networks
  has_many :networks, :through => :school_user_networks
  has_many :school_networks, :through => :networks
  has_many :schools, :through => :networks

end
