require './player'

describe Player do
  subject(:player) { Player.new("Tamar")}

describe '#player_name' do
  it 'returns player\'s name' do
    expect(player.name).to eq "Tamar"
  end
end

end
