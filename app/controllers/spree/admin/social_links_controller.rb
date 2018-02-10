class Spree::Admin::SocialLinksController < Spree::Admin::ResourceController
  helper 'spree/social_links'
  before_action :set_spree_social_link, only: [:edit, :update, :destroy]
  before_action :set_social_links

  # GET /spree/social_links
  def index
    @spree_social_link = Spree::SocialLink.new
  end

  # POST /spree/social_links
  def create
    @spree_social_link = Spree::SocialLink.new(spree_social_link_params)
    if @spree_social_link.save
      redirect_to admin_social_links_url, notice: 'Social link was successfully created.'
    else
      flash[:error] = @spree_social_link.errors.full_messages.to_sentence
      # flash[:error] = Spree.t('notice_messages.product_not_deleted', error: @product.errors.full_messages.to_sentence)
      # flash[:error] = flash_message_for(@spree_social_link, :not_created)
      redirect_to admin_social_links_url, error: 'Social link was not created'
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
    redirect_to admin_social_links_url, notice: 'Social link was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_links
    @spree_social_links = Spree::SocialLink.all
    end
    def set_spree_social_link
      @spree_social_link = Spree::SocialLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spree_social_link_params
      params.require(:social_link).permit!
    end
end
