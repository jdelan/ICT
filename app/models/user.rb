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
validates :company_comments_count, :numericality => { :greater_than_or_equal_to => 0 }
validates :articles_count, :numericality => { :greater_than_or_equal_to => 0 }
validates :article_comments_count, :numericality => { :greater_than_or_equal_to => 0 }

end
