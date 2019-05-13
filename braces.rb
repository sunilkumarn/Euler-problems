# Write a function called validBraces that takes a string of braces, and determines if #the order of the braces is valid. validBraces should return true if the string is valid, #and false if it's invalid.

#All input strings will be nonempty, and will only consist of open parentheses '(' , #closed parentheses ')', open brackets '[', closed brackets ']', open curly braces '{' #and closed curly braces '}'.

#What is considered Valid?

#A string of braces is considered valid if all braces are matched with the correct brace. #For example:

#'(){}[]' and '([{}])' would be considered valid, while '(}', '[(])', and '[({})](]' #would be considered invalid.


def valid_braces(str)
  pair_braces = { '}' => '{', ')' => '(', ']' => '[' }
  valid = true
  left_brace_indices = { }
  pair_braces.values.each { |brace| left_brace_indices[brace] = [] }
  str.chars.each_with_index do | brace, i | 
    if pair_braces.values.include? brace
      left_brace_indices[brace] << i
    else
      last_left_brace_index = left_brace_indices[pair_braces[brace]].max
      open_indices = left_brace_indices.values.flatten
      if !last_left_brace_index or (open_indices & (last_left_brace_index+1..i).to_a).size > 0
        valid = false
        break
      else
        left_brace_indices[pair_braces[brace]].delete(last_left_brace_index)
      end
    end
  end
  valid
end
