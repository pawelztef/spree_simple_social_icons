class AddIconImageToSocialLinks < ActiveRecord::Migration[5.1]
  def up
    add_attachment :spree_social_links, :icon_image
  end
  def down
    remove_attachment :spree_social_links, :icon_image
  end
end
