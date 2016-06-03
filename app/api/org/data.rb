module Org
  class Data < Grape::API
    resource :org_data do
      desc "List of all ORGs"
      get do
        OrgDatum.all
      end
    end
  end
end
