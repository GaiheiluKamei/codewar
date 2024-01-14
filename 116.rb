=begin

Question: Find the Nexus of the Codewars Universe

Description:
  Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were
  the same number. I cried a little.

  Complete the method that takes a hash/object/directory/association list of users, and find the nexus:
  the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user,
  the key is the rank and the value is the honor.

  If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are
  several users who come closest, return the one with the lowest rank (numeric value). The hash will not
  necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example:
            rank    honor
  users = {  1  =>  93,
            10  =>  55,
            15  =>  30,
            20  =>  19,    <--- nexus
            23  =>  11,
            30  =>   2 }

=end

def nexus users
  res = users.to_a.map { |x| [x.first, (x.last-x.first).abs] }
  min = res.min_by { |x| x.last }.last
  final = res.select { |x| x.last == min }
  final.size == 1 ? final.first.first : final.min_by { |x| x.first }.first
end

=begin

Others' solutions:

# 如果 min_by 方法的块内返回的是数组，排序逻辑是先根据数组的第一个元素进行排序，如果相等，再根据第二个元素排序。
def nexus(users)
  users.min_by{ |rank, honor| [(rank - honor).abs, rank] }[0]
end

def nexus(users)
  min_diff = users.min_by { |rank, honor| (rank - honor).abs }.reduce(:-).abs

  users.select { |rank, honor| (rank - honor).abs == min_diff }.keys.min
end

=end