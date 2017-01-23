Spree::Product.class_eval do
  self.whitelisted_ransackable_attributes = %w[published]
end
