class Spree::SocialLinksController < ApplicationController
  before_action :set_spree_social_link, only: [:show, :edit, :update, :destroy]

  # GET /spree/social_links
  def index
    @spree_social_links = Spree::SocialLink.all
  end

  # GET /spree/social_links/1
  def show
  end

  # GET /spree/social_links/new
  def new
    @spree_social_link = Spree::SocialLink.new
  end

  # GET /spree/social_links/1/edit
  def edit
  end

  # POST /spree/social_links
  def create
    @spree_social_link = Spree::SocialLink.new(spree_social_link_params)

    if @spree_social_link.save
      redirect_to @spree_social_link, notice: 'Social link was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spree/social_links/1
  def update
    if @spree_social_link.update(spree_social_link_params)
      redirect_to @spree_social_link, notice: 'Social link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spree/social_links/1
  def destroy
    @spree_social_link.destroy
    redirect_to spree_social_links_url, notice: 'Social link was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spree_social_link
      @spree_social_link = Spree::SocialLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spree_social_link_params
      params.fetch(:spree_social_link, {})
    end
end
