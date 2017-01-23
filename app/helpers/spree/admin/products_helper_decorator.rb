Spree::ProductsHelper.class_eval do
  def publish_status(product)
    product.published? ? Spree.t(:published) : Spree.t(:unpublished)
  end
end