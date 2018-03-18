class AddAltToSpreeSocialLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_social_links, :alt, :string
  end
end
