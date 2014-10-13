# == Schema Information
#
# Table name: white_labels
#
#  id          :integer          not null, primary key
#  school_id   :integer
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class WhiteLabel < ActiveRecord::Base
end
