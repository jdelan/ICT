class CompanyComment < ApplicationRecord

  belongs_to :company
belongs_to :user
validates :user_id, :presence => true
validates :company_id, :presence => true
validates :comment, :presence => true
end
