require 'rails_helper'

RSpec.describe "spree/social_links/show", type: :view do
  before(:each) do
    @spree_social_link = assign(:spree_social_link, Spree::SocialLink.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
