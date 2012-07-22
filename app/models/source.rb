class Source < ActiveRecord::Base

  attr_accessible :author_ids
  has_many :quotes
  has_one :image, :as => :entity, :dependent => :destroy
  has_many :authorships
  has_many :authors, through: :authorships

  accepts_nested_attributes_for :image, :allow_destroy => true, :reject_if => proc {|obj| obj.blank? }

end
