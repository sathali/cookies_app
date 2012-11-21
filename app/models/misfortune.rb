# == Schema Information
#
# Table name: misfortunes
#
#  id         :integer          not null, primary key
#  misfortune :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Misfortune < ActiveRecord::Base
  attr_accessible :misfortune

  validates :misfortune, presence: true, length: { maximum: 140 }
end
