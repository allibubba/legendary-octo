module Org
  class Data < Grape::API
    resource :org_data do
      desc "List all Employee"
      get do
        Org.all
      end
    end
  end
end
