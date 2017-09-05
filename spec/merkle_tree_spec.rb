require "spec_helper"

describe MerkleTree do
  let(:tree){ MerkleTree.new(['a','b','c','d'])}
  it '.leafs' do
    expect(tree.leafs).to eq(['a','b','c','d'])
  end

  it '.compute_level' do
    expect(tree.compute_level(['a','b','c','d'])).to eq(["961b6dd3ede3cb8ecbaacbd68de040cd78eb2ed5889130cceb4c49268ea4d506", 
                                                         "355b1bbfc96725cdce8f4a2708fda310a80e6d13315aec4e5eed2a75fe8032ce"])
  end

  it '.compute_level for no pair nodes' do
    pending
    expect(false).to be(true)
  end

  it '.root' do
    pending
    expect(tree.root).to eq("12a40550c10c6339bf6f271445270e49b844d6c9e8abc36b9b642be532befe94")
  end
end
