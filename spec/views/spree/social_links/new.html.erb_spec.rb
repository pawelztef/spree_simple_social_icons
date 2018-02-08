require 'rails_helper'

RSpec.describe "spree/social_links/new", type: :view do
  before(:each) do
    assign(:spree_social_link, Spree::SocialLink.new())
  end

  it "renders new spree_social_link form" do
    render

    assert_select "form[action=?][method=?]", spree_social_links_path, "post" do
    end
  end
end
