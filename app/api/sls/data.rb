module Sls
  class Data < Grape::API
    resource :sls_data do
      desc "List of all ORGs"
      get do
        SlsDatum.all
      end
    end
  end
end
