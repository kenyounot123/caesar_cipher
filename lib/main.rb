$lower_case = ('a'..'z')
$upper_case = ('A'..'Z')
def caesar_cipher(old_string, shift)
  modified_string = []
  old_string.each_char do |char|
    if $lower_case.include?(char)
      new_char = (97 + (((char.ord + shift) - 97) % 26)).chr
    elsif $upper_case.include?(char)
      new_char = (65 + (((char.ord + shift) - 65) % 26)).chr
    else
      modified_string << char
      next
    end
    modified_string << new_char
  end
  modified_string.join
end