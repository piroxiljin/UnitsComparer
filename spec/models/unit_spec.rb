RSpec.describe Unit, type: :model do
  let(:unit) { create(:unit) }

  let(:attack) do
    create(
      :attack,
      unit: unit,
      attack: 5,
      attack_upgrade: 1,
      attack_count: 3,
      cooldown: 4
    )
  end

  describe '#dps' do
    subject { unit.dps(attack, attack_upgrade_level) }

    context 'attack_upgrade_level = 2' do
      let(:attack_upgrade_level) { 2 }

      it { expect(subject).to eq ((5.0 + 1 * 2) * 3 / 4) }
    end
  end
end
