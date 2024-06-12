JsRoutes.setup do |config|
  config.module_type = "ESM"
  config.url_links = true
  config.default_url_options = { protocol: 'http', host: '127.0.0.1:5000' }
  config.file = Rails.root.join("client", "src", "utils", "routes.js").to_s
  config.special_options_key = "toString"
end