module Spree::SocialLinksHelper
    def show_visibility entry 
      if entry.visible
       content_tag(:i, '', :class => 'glyphicon glyphicon-check')
      else
       content_tag(:i, '', :class => 'glyphicon glyphicon-unchecked')
      end
    end
end
