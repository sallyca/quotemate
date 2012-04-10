class Quote < ActiveRecord::Base
  belongs_to :source
  has_and_belongs_to_many :tags
  belongs_to :category

  scope :on_home_page, where(:show_on_home_page => true)
  scope :from_books, :conditions => "category_id IN (SELECT id FROM categories WHERE categories.title = 'book')"
  scope :from_movies, :conditions => "category_id IN (SELECT id FROM categories WHERE categories.title = 'movie')"

end
