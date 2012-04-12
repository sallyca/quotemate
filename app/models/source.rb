class Source < ActiveRecord::Base
  # acts_as_nested_set
  has_many :quotes
  has_one :image, :as => :entity, :dependent => :destroy

  accepts_nested_attributes_for :image, :allow_destroy => true, :reject_if => proc {|obj| obj.blank? }
  # default_scope includes(:image).nested_set
end
