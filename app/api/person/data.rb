module Person
  class Data < Grape::API
    resource :person_data do
      desc "List of all ORGs"
      get do
        Structures::Person.all
      end
    end
  end
end
