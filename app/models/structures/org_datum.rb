class Structures::OrgDatum < ApplicationRecord
  has_many :sls_datums
  has_many :ths, :through => :sls_datums
  has_many :People
end