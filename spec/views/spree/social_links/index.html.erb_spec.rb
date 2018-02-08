require 'rails_helper'

RSpec.describe "spree/social_links/index", type: :view do
  before(:each) do
    assign(:spree_social_links, [
      Spree::SocialLink.create!(),
      Spree::SocialLink.create!()
    ])
  end

  it "renders a list of spree/social_links" do
    render
  end
end
