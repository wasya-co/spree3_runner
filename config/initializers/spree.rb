
Spree.user_class = "Spree::User"

SpreeI18n::Config.available_locales = [:en, :es, :'pt-BR'] # displayed on frontend select box
SpreeGlobalize::Config.supported_locales = [:en, :es, :'pt-BR'] # displayed on translation forms

Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

# Configure Spree Dependencies
#
# Note: If a dependency is set here it will NOT be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will make the dependency value go away.
#
Spree.dependencies do |dependencies|
  # Example:
  # Uncomment to change the default Service handling adding Items to Cart
  # dependencies.cart_add_item_service = 'MyNewAwesomeService'
end



