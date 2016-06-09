# == Schema Information
#
# Table name: org_data
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Structures::OrgDatum < ApplicationRecord
  has_many :sls_datum, :class_name => 'Structures::SlsDatum'
end
