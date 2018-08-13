# require 'spec_helper'
#
#
# class DummyClass
#   include MatchStats
# end
#
# RSpec.describe MatchStats do
#   it 'returns five' do
#     dc = DummyClass.new
#     expect(dc.get_query_params("Fought")).to eq("(title like ?)", "Fought %")
#   end
# end