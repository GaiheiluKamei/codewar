=begin

Question: The Strongest Tree in the Forest

Description:
  You have a class called Node, representing a node in a binary tree (https://en.wikipedia.org/wiki/Binary_tree).

  Each node has 2 children - the right child and the left child. These children can of course be null.

  You job is to add an instance method, height, which returns the longest branch steming from the
  tree (starting from this node). For example, this tree would result in 3:

          (Node)
          /    \
      (Node)  (Node)
      /          \
    (Node)      (Node)
         \
        (Node)

  Recursion is not necessary, but highly recommended.

=end

class Node
  attr_accessor :r_node, :l_node

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end

  def height
    return 0 if r_node.nil? && l_node.nil?

    r_max = l_max = 0

    if r_node
      r_max = r_node.height + 1
    end

    if l_node
      l_max = l_node.height + 1
    end

    [r_max, l_max].max
  end
end

=begin

Others' solutions:

class Node
  attr_accessor :r_node, :l_node

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end

  def height
    [r_node&.height || -1, l_node&.height || -1].max + 1
  end
end

class Node
  attr_accessor :r_node, :l_node

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end

  def height
    [-1, l_node&.height, r_node&.height].compact.max + 1
  end
end

=end