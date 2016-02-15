require 'spec_helper'
require 'codility/future/tree_height'

RSpec.describe Codility::Future::TreeHeight do
  include Codility::Future::TreeHeight
  Tree = Codility::Future::TreeHeight::Tree

  it 'returns height of a binary tree' do
    # (5, (3, (20, None, None), (21, None, None)), (10, (1, None, None), None))
    tree = Tree.new(5,
             Tree.new(3,
                      Tree.new(20, nil, nil),
                      Tree.new(21, nil, nil)),
             Tree.new(10,
                      Tree.new(1, nil, nil),
                      nil
             ))

    expect(solution(tree)).to eq(2)
  end

  it 'returns -1 for empty tree' do
    expect(solution(nil)).to eq(-1)
  end

  it 'returns correct result for huge input' do
    left_node = Tree.new(1,nil,nil)
    right_node = Tree.new(1,nil,nil)

    20.times do |n|
      left = Tree.new(n + 2,left_node.dup,right_node.dup)
      right = Tree.new(n + 2,left_node.dup,right_node.dup)

      left_node = left
      right_node = right
    end

    root_node = Tree.new(-1, left_node, right_node)

    expect(solution(root_node)).to eq(21)
  end

  it 'works with deepest possible tree' do
    left_node = Tree.new(1,nil,nil)
    500.times do |n|
      left_node = Tree.new(n + 2, left_node.dup, nil)
    end

    root_node = Tree.new(-1, left_node)

    expect(solution(root_node)).to eq(501)
  end
end
