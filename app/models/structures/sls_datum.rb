# == Schema Information
#
# Table name: sls_data
#
#  id           :integer          not null, primary key
#  name         :string
#  org_datum_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Structures::SlsDatum < ApplicationRecord
  belongs_to :org_datum, :class_name => 'Structures::OrgDatum'
  has_many :ths, :class_name => 'Structures::Th', :dependent => :destroy
end
