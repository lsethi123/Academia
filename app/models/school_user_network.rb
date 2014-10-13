# == Schema Information
#
# Table name: school_user_networks
#
#  id             :integer          not null, primary key
#  school_user_id :integer
#  network_id     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class SchoolUserNetwork < ActiveRecord::Base

  belongs_to :school_user
  belongs_to :network

  validates :network, :presence => true

end
