require 'spec_helper'

describe 'EnergyCharge' do
  describe 'initialize' do
    it '適切な値の入力' do
      energy_charge = EnergyCharge.new(200)
      expect(energy_charge.usage).to eq(200)
    end
  end

  describe 'tokyo_energy' do
    it '正確な値が出力されているか 0の時' do
      energy_charge = EnergyCharge.new(0)
      expect(energy_charge.tokyo_energy).to eq(0)
    end

    it '正確な値が出力されているか 300の時' do
      energy_charge = EnergyCharge.new(300)
      expect(energy_charge.tokyo_energy).to eq(7152)
    end
  end
end
