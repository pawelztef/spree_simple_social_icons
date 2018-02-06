class Spree::SocialLink < ApplicationRecord
  has_attached_file :icon_image, styles: {mini: '48x48#'},
    default_style: :mini, 
    url: "/assets/social_icons/:id/:style/:basename.:extension",
    path: ":rails_root/public/assets/social_icons/:id/:style/:basename.:extension"
  validates_presence_of :url
  validates_presence_of :icon_image
end
