require 'spec_helper'

describe 'atcoder35_B_Drone' do
  it "ex1" do
    s = 'UL?'
    t = '1'.to_i
    expect(B.result(s, t)).to eq(3)
  end

  it "ex2" do
    s = 'UD?'
    t = '1'.to_i
    expect(B.result(s, t)).to eq(1)
  end

  it "ex3" do
    s = 'UUUU?DDR?LLLL'
    t = '1'.to_i
    expect(B.result(s, t)).to eq(7)
  end

  it "ex4" do
    s = 'UULL?'
    t = '2'.to_i
    expect(B.result(s, t)).to eq(3)
  end
end
