# == Schema Information
#
# Table name: structures_pets
#
#  id         :integer          not null, primary key
#  name       :string
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_structures_pets_on_person_id  (person_id)
#

class Structures::Pet < ApplicationRecord
  belongs_to :person
end
