# == Schema Information
#
# Table name: ths
#
#  id           :integer          not null, primary key
#  name         :string
#  sls_datum_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Structures::Th < ApplicationRecord
  # belongs_to :sls_datum
end
