# == Schema Information
#
# Table name: company_comments
#
#  id         :integer          not null, primary key
#  comment    :text
#  company_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompanyComment < ApplicationRecord

  belongs_to :company
belongs_to :user
validates :user_id, :presence => true
validates :company_id, :presence => true
validates :comment, :presence => true
end
