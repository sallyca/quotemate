class Quote < ActiveRecord::Base
  belongs_to :source
  belongs_to :quoter
  has_and_belongs_to_many :tags
  belongs_to :category
  belongs_to :author

  scope :on_home_page, where(:show_on_home_page => true)
  scope :from_books, :conditions => "category_id IN (SELECT id FROM categories WHERE categories.title = 'book')"
  scope :from_movies, :conditions => "category_id IN (SELECT id FROM categories WHERE categories.title = 'movie')"

  attr_reader :tag_tokens

  def source_title
    source.try(:title)
  end

  def source_title=(title)
    self.source = Source.find_or_create_by_title(title) if title.present?
  end

  def tag_tokens=(keyword)
    self.tags << Tag.find_or_create_by_keyword(keyword) if keyword.present?
  end

end
