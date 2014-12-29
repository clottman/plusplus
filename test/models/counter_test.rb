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

require 'test_helper'

class CounterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
