GrapeSwaggerRails.options.url      = '/api/v1/docs.json'
GrapeSwaggerRails.options.app_url  = 'http://localhost:3000'
GrapeSwaggerRails.options.before_filter_proc = proc {
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
}
GrapeSwaggerRails.options.app_name = 'Swagger'
GrapeSwaggerRails.options.doc_expansion = 'list'
GrapeSwaggerRails.options.supported_submit_methods = ["get"]

GrapeSwaggerRails.options.validator_url = nil if Rails.env == 'development'
