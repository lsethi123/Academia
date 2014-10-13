# == Schema Information
#
# Table name: networks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  archived   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Network < ActiveRecord::Base

  has_many :school_user_networks
  has_many :school_users, :through => :school_user_networks

  has_many :school_networks 
  has_many :schools, :through => :school_networks

  validates :name, :presence => true

end
