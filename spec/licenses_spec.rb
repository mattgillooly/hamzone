require 'spec_helper'
require_relative '../lib/licenses'

describe Licenses do
  describe '#get_callsigns', :vcr do
    context 'given an FRN with licenses' do
      let(:frn) { '0026525634' }

      it 'returns an array of callsigns' do
        callsigns = subject.get_callsigns(frn)
        expect(callsigns).to match_array(%w(KD9IPI WA9FOA))
      end
    end

    context 'given an FRN with no licenses' do
      let(:frn) { '0026529388' }

      it 'returns an empty array' do
        expect(subject.get_callsigns(frn)).to eq([])
      end
    end
  end
end
