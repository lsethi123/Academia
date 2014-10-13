# == Schema Information
#
# Table name: school_networks
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  network_id :integer
#  archived   :boolean
#  created_at :datetime
#  updated_at :datetime
#  role       :string(255)
#

class SchoolNetwork < ActiveRecord::Base
  belongs_to :school 
  belongs_to :network

  validates :network, :presence => true

end
