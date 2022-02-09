Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3001"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  allow do
    origins "https://objective-kilby-bd1d9f.netlify.app"
    resource "https://shrouded-hollows-01022.herokuapp.com/", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end