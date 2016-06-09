class Structures::OrgDatum < ApplicationRecord
  has_many :sls_datum, :class_name => 'Structures::SlsDatum'
end
