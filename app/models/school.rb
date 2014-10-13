# == Schema Information
#
# Table name: schools
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  address          :string(255)
#  city             :string(255)
#  state            :string(255)
#  zipcode          :string(255)
#  phone            :string(255)
#  website          :string(255)
#  email            :string(255)
#  parent_school_id :integer
#  archived         :boolean
#  created_at       :datetime
#  updated_at       :datetime
#

class School < ActiveRecord::Base

  has_many :school_networks
  has_many :networks, :through => :school_networks
  has_many :user_networks, :through => :networks
  has_many :users, :through => :user_networks

  has_many :school_classes

end
