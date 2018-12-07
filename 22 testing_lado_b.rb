require_relative './22 testing.rb'

RSpec.describe 'Prueba de corrido' do
  it 'llamar metodo' do
    #expect(prueba_x).to eq 'probando'  # prueba exitosa
    expect(prueba_x).to eq 'probanda'  # prueba fallida
  end
end
