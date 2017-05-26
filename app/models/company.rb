# == Schema Information
#
# Table name: companies
#
#  id              :integer          not null, primary key
#  name            :text
#  description     :text
#  tags            :string
#  hq_address      :string
#  active_business :boolean
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Company < ApplicationRecord

  has_many :company_comments, :dependent => :destroy
  has_many :contacts, :dependent => :destroy
  has_many :trackings, :dependent => :destroy
  has_many :stories, :dependent => :destroy
  has_many :users, :through => :trackings, :source => :user
has_many :articles, :through => :stories, :source => :article
validates :name, :presence => true
validates :name, :uniqueness => { :scope => [:hq_address] }
validates :hq_address, :presence => true
validates :hq_address, :uniqueness => true
validates :active_business, :presence => true

end
