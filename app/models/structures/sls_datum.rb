class Structures::SlsDatum < ApplicationRecord
  belongs_to :org_datum, :class_name => 'Structures::OrgDatum'
  has_many :ths, :class_name => 'Structures::Th'
end
