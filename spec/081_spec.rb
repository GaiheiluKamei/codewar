describe("mxdiflg") do

  def do_test(s1, s2, expected)
    actual = mxdiflg(s1, s2)
    message = "expected = %s\nactual = %s\ns1 = [%s]\ns2 = [%s]" %
      [expected, actual, s1.join(', '), s2.join(', ')]
    expect(actual).to eq(expected), message
  end

  it("Basic tests") do
    s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
    s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
    do_test(s1, s2, 13)
    s1 = ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"]
    s2 = ["bbbaaayddqbbrrrv"]
    do_test(s1, s2, 10)
    s1 = ["ccct", "tkkeeeyy", "ggiikffsszzoo", "nnngssddu", "rrllccqqqqwuuurdd", "kkbbddaakkk"]
    s2 = ["tttxxxxxxgiiyyy", "ooorcvvj", "yzzzhhhfffaaavvvpp", "jjvvvqqllgaaannn", "tttooo", "qmmzzbhhbb"]
    do_test(s1, s2, 14)
    s1 = []
    s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
    do_test(s1, s2, -1)
    s2 = []
    s1 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
    do_test(s1, s2, -1)
    s1 = []
    s2 = []
    do_test(s1, s2, -1)
  end

end