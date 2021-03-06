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
      content_tag :ul, class: 'social-media' do
        links.get_links.map do |link| 
          if link.icon_image.present?
            concat "<li>#{link_to(image_tag(link.icon_image.url(:mid)), link.url)}</li>".html_safe
          else
            concat "<li>#{link_to link.alt, link.url}</li>".html_safe
          end
        end
      end
    end
  end
end
