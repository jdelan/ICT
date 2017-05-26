# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  user_biography         :text
#  username               :string
#  last_name              :string
#  first_name             :string
#  company_comments_count :integer
#  articles_count         :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :articles, :dependent => :nullify
         has_many :trackings, :dependent => :destroy
         has_many :company_comments, :dependent => :nullify
         has_many :contacts, :dependent => :destroy
         has_many :tracked_companies, :through => :trackings, :source => :company
         validates :username, :length => { :minimum => 4, :maximum => 15 }
validates :username, :presence => true
validates :username, :uniqueness => true
validates :last_name, :presence => true
validates :first_name, :presence => true


end
