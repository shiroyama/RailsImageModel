class Photo < ActiveRecord::Base
    attr_accessible :title, :album_id, :photo_file
    belongs_to :album

    #validates :title, :presence => true

    has_attached_file :photo_file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    # mandatory
    validates_attachment_content_type :photo_file, :content_type => /\Aimage\/.*\Z/
end
