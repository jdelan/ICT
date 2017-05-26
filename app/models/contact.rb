class Contact < ApplicationRecord

  belongs_to :company
belongs_to :user
validates :user_id, :presence => true
validates :name, :presence => true
validates :name, :uniqueness => { :scope => [:role, :email, :phone_number, :company_id] }
validates :company_id, :presence => true
end
