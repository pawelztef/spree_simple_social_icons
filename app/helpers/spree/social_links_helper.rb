module Spree::SocialLinksHelper
  def show_visibility entry 
    if entry.visible
      content_tag(:i, '', :class => 'glyphicon glyphicon-check')
    else
      content_tag(:i, '', :class => 'glyphicon glyphicon-unchecked')
    end
  end
  def build_links
    links = Spree::SocialLink.get_links
    if links.present?
      content_tag :div, class: 'social-links' do
        links.get_links.map do |link| 
          concat(image_tag link.icon_image.url(:mid))
        end
      end
    end
  end
end
