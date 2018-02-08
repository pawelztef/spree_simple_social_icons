require 'rails_helper'

RSpec.describe "spree/social_links/edit", type: :view do
  before(:each) do
    @spree_social_link = assign(:spree_social_link, Spree::SocialLink.create!())
  end

  it "renders the edit spree_social_link form" do
    render

    assert_select "form[action=?][method=?]", spree_social_link_path(@spree_social_link), "post" do
    end
  end
end
