class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Org::Data
  mount Sls::Data
  mount Person::Data
  add_swagger_documentation(
    base_path: "/api",
    hide_documentation_path: true,
    api_version: 'v1',
    mount_path: '/docs'
  )
end
