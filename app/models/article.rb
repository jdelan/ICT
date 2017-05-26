class Article < ApplicationRecord
  belongs_to :user
  has_many :stories, :dependent => :destroy
  has_many :references, :through => :stories, :source => :company
  validates :user_id, :presence => true
validates :user_id, :uniqueness => { :scope => [:title, :url] }
validates :url, :presence => true
validates :title, :presence => true
validates :date, :presence => true
validates :company_id, :presence => true

end
