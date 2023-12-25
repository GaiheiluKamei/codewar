=begin

Question: Count the smiley faces!

Description:
  Given an array (arr) as an argument complete the function count_smileys that should
  return the total number of smiling faces.

  Rules for a smiling face:
    1. Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
    2. A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
    3. Every smiling face must have a smiling mouth that should be marked with either ) or D

  No additional characters are allowed except for those mentioned.

  Valid smiley face examples: :) :D ;-D :~)
  Invalid smiley faces: ;( :> :} :]

Example:
  countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
  countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
  countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;

Note:
  In case of an empty array return 0. You will not be tested with invalid input (input will
  always be an array). Order of the face (eyes, nose, mouth) elements will always be the same.

=end

def count_smileys(arr)
  arr.reduce(0) { |res, i| i.match?(/(:|;)(-|~)?(\)|D)/) ? res += 1 : res }
end

=begin

Others' solutions:

def count_smileys(arr)
  arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
end

def count_smileys(arr)
  arr.grep(/[:;][-~]?[)D]/).size
end

=end