class Article < ActiveRecord::Base
	has_one :category

	validates_presence_of :title, :content
	scope :alphabetical, order('title')
	scope :active, where('articles.active =?', true)
end
