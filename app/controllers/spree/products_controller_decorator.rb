Spree::ProductsController.class_eval do
  private

  def load_product
    if try_spree_current_user.try(:has_spree_role?, "admin")
      @products = Spree::Product.with_deleted
    else
      @products = Spree::Product.active(current_currency)
    end
    @product = @products.published.includes(:variants_including_master).friendly.find(params[:id])
  end
end
