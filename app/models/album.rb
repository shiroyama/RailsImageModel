class Album < ActiveRecord::Base
    attr_accessible :title, :photos_attributes
    has_many :photos
    accepts_nested_attributes_for :photos, :allow_destroy => true
end
