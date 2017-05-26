# == Schema Information
#
# Table name: trackings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tracking < ApplicationRecord
  belongs_to :company
  belongs_to :user
  validates :user_id, :presence => true
validates :user_id, :uniqueness => { :scope => [:company_id] }
validates :company_id, :presence => true
validates :company_id, :uniqueness => { :scope => [:user_id] }

end
