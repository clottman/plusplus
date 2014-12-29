# == Schema Information
#
# Table name: counters
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  count      :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  active     :boolean          default("t")
#

class Counter < ActiveRecord::Base
	validates :name, presence: true


end
