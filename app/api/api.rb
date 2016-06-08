class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Org::Data
  mount Th::Data
  mount Sls::Data
end
