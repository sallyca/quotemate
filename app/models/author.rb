class Author < ActiveRecord::Base
  has_many :authorships
  has_many :quotes
  has_many :sources, through: :authorships
end
