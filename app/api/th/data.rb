module Ths
  class Data < Grape::API
    resource :ths_data do
      desc "List of all THs"
      get do
        "test"
        Th.all
      end
    end
  end
end
