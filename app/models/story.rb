class Story < ApplicationRecord

  belongs_to :company
belongs_to :article
validates :company_id, :presence => true
validates :company_id, :uniqueness => { :scope => [:article_id] }
validates :article_id, :presence => true
validates :article_id, :uniqueness => { :scope => [:company_id] }
end
