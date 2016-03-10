def ace(input)
  if input.to_s.downcase == "a"
    return input = 11
  else
    return input
  end
end

puts "What is your first card? Use 10 for face cards."
  first = gets.chomp

puts "What is your second card? Use 10 for face cards."
  second = gets.chomp

puts "What is the dealer showing?"
  dealer = gets.chomp

first_card = ace(first)
second_card = ace(second)
dealer_card = ace(dealer)

hand = first_card.to_i + second_card.to_i

puts "#{first_card} #{second_card} #{dealer_card} #{hand}"

if first_card || second_card == "a"
  #iterate through hard dealer hash that matches dealer_card
  puts "puts h or dh value associated with hand key"
else
  #iterate through soft dealer hash that matche dealer_card
  puts "h or dh value associated with hand key"
end

h = "hit"
dh = "don't hit"
#each hash in hard represents dealer_card
hard = {
  2 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => dh, 10 => dh, 11 => dh}
}
#   3 =>
#   4 =>
#   5 =>
#   6 =>
#   7 =>
#   8 =>
#   9 =>
#   10 =>
#   A =>
# }

#each has in hard represents dealer_card
soft = {
  2 => {13 => h, 14 => h, 15 => h, 16 => h}
}
#   3 =>
#   4 =>
#   5 =>
#   6 =>
#   7 =>
#   8 =>
#   9 =>
#   10 =>
#   A =>
# }
