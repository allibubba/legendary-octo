class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Org::Data
  mount Sls::Data
  mount Person::Data
end
