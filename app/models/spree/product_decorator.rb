Spree::Product.class_eval do
  scope :published, -> { where(published: true) }
  self.whitelisted_ransackable_attributes = %w[published]
end
