# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  company_id :integer
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ApplicationRecord

  belongs_to :company
belongs_to :article
validates :company_id, :presence => true
validates :company_id, :uniqueness => { :scope => [:article_id] }
validates :article_id, :presence => true
validates :article_id, :uniqueness => { :scope => [:company_id] }
end
