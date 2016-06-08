module Ths
  class Data < Grape::API
    resource :ths_data do
      desc "List of all THs"
      get do
        ::Th.all
      end
    end
  end
end
