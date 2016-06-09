module Th
  class Data < Grape::API
    resource :ths_data do
      desc "List of all THs"
      get do
        "test"
      end
    end
  end
end
