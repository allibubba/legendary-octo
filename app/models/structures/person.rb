# == Schema Information
#
# Table name: people
#
#  id          :integer          not null, primary key
#  name        :string
#  org_data_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_people_on_org_data_id  (org_data_id)
#

class Structures::Person < ApplicationRecord
  self.table_name = "people"
  belongs_to :org_datum
  has_many :pets
end
