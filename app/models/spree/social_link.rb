class Spree::SocialLink < ApplicationRecord
  has_attached_file :icon_image, styles: {mini: '16x16#', mid: '24x24#', large: '32x32#'},
    default_style: :mini, 
    url: "/assets/social_icons/:id/:style/:basename.:extension",
    path: ":rails_root/public/assets/social_icons/:id/:style/:basename.:extension"
  validates_presence_of :url
  validates :url, :format => URI::regexp(%w(http https))
  validates_attachment :icon_image, presence: true
  validates_attachment_content_type :icon_image, content_type: /\Aimage/
  validates_attachment_file_name :icon_image, matches: [/png\z/, /jpe?g\z/, /svg\z/]
  def self.get_links
    Spree::SocialLink.all
  end
end
