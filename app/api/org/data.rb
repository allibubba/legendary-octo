module Org
  class Data < Grape::API
    resource :org_data do
      desc "List of all ORGs"
      get do
        Structures::OrgDatum.all
      end

      desc "add new org"
      params do
        requires :name, type: String
        requires :address, type: String
      end
      post do
        Structures::OrgDatum.create!({
          name: params[:name],
          address: params[:address]
        })
      end
      
    end
  end
end
