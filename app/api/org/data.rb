module Org
  class Data < Grape::API
    resource :org_data do
      desc "List all ORG"
      get do
        Structures::OrgDatum.all
      end

      desc "Create Org"
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
      
      desc "Read Org"
      params do
        requires :id, type: String, desc: "ID of the Org"
      end
      get ":id", root: "org"  do
        Structures::OrgDatum.find(params[:id])
      end

      desc "Update Org"
      params do
        requires :id, type: String
        requires :name, type:String
        requires :address, type:String
      end
      put ':id' do
        Structures::OrgDatum.find(params[:id]).update({
          name:params[:name],
          address:params[:address]
        })
      end

      desc "Destroy Org"
      params do
        requires :id, type: String, desc: "ID of the Org"
      end
      delete ":id", root: "org"  do
        Structures::OrgDatum.find(params[:id]).destroy!
      end

    end
  end
end
