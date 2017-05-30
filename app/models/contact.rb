# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  name         :string
#  role         :string
#  email        :text
#  phone_number :string
#  notes        :text
#  company_id   :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Contact < ApplicationRecord

  belongs_to :company
belongs_to :user
validates :user_id, :presence => true
validates :name, :presence => true
validates :name, :uniqueness => { :scope => [:user_id, :role, :company_id] }
validates :company_id, :presence => true
end
