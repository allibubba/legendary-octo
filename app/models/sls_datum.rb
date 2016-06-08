class SlsDatum < ApplicationRecord
  belongs_to :org_datum
  has_many :ths
end
