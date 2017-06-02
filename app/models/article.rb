# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  url        :text
#  tag        :string
#  title      :text
#  company_id :integer
#  date       :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  belongs_to :user
  has_many :stories, :class_name => "Story", :foreign_key => "article_id"
    has_many :companies, :through => :stories
  has_many :references, :through => :stories, :source => :company
  validates :user_id, :presence => true
validates :url, :presence => true
validates :title, :presence => true
validates :date, :presence => true
# validates :tag, :presence => true
validates :company_id, :presence => true

end
