# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#     allow do
#       origins "http://localhost:3001"
#       resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
#     end
  
#     # allow do
#     #   origins "https://link-to-production-app.com/"
#     #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
#     # end
#   end
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3001"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
credentials: true
  end
end