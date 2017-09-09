require "merkle_tree/version"
require 'digest'

class Merkle
  attr_accessor :leafs
  def initialize(leafs)
    @leafs = leafs
  end

  def compute_level(arr)
    arr.length
    arr.length.times.map do |index|
      next if (index % 2) == 1
      Digest::SHA256.hexdigest(("#{ arr[index].to_s }#{arr[index + 1].to_s}"))
    end.compact
  end

  def root(subtree=nil)
    subtree ||= @leafs
    return subtree[0] if subtree.length == 1
    root(compute_level(subtree))
  end
end
