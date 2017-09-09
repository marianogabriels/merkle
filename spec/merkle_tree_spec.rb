require "spec_helper"

describe Merkle do
  let(:tree){ Merkle.new(['a','b','c','d'])}
  it '.leafs' do
    expect(tree.leafs).to eq(['a','b','c','d'])
  end

  #it '.tree' do
    #expect(tree.tree).to eq([['a','b','c','d'],
                             #["961b6dd3ede3cb8ecbaacbd68de040cd78eb2ed5889130cceb4c49268ea4d506","355b1bbfc96725cdce8f4a2708fda310a80e6d13315aec4e5eed2a75fe8032ce"],
                                                #["2d9ecd3966a734f5682291c6d3f0f76691c4c638b113718a19bd97fef6e03c16"]

    #])  
  #end

  it '.compute_level' do
    expect(tree.compute_level(['a','b','c','d'])).to eq(["fb8e20fc2e4c3f248c60c39bd652f3c1347298bb977b8b4d5903b85055620603", 
                                                         "21e721c35a5823fdb452fa2f9f0a612c74fb952e06927489c6b27a43b817bed4"])
  end

  it '.root' do
    expect(tree.root).to eq("12a40550c10c6339bf6f271445270e49b844d6c9e8abc36b9b642be532befe94")
  end
end
