# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  name         :string
#  org_datum_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Structures::Person < ApplicationRecord
  belongs_to :org_datum
end
