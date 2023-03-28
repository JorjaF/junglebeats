require 'rspec'
require './lib/node'
require './lib/linkedlist'
require './lib/junglebeats'

RSpec.describe JungleBeats do

  it "exist" do
    jb = JungleBeats.new
    expect(jb).to be_an_instance_of(JungleBeats)
  end 

  it "has readable attributes" do
    jb = JungleBeats.new
    expect(jb.list).to be_an_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it "can be appended" do 
    jb = JungleBeats.new
    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    jb.append("woo hoo shu")
    expect(jb.list.count).to eq(6)
  end

  it "can be played" do 
    jb = JungleBeats.new
    jb.append("deep")
    jb.append("Mississippi")
    #jb.append("deep doo ditt woo hoo shu")
    #expect(jb.count).to eq (6)
    #expect(jb.list.count).to eq(6)
    jb.play
  end

end