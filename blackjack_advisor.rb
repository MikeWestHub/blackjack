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
dealer_card = ace(dealer).to_i

hand = first_card.to_i + second_card.to_i

h = "Hit!"
dh = "Don't hit!"
s = "Stay!"

#each hash in hard represents dealer_card
hard = {
  2 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => dh, 10 => dh, 11 => dh, 12 => h, 13 => s, 14 => s, 15 => s, 16 => s, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  3 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => dh, 10 => dh, 11 => dh, 12 => h, 13 => s, 14 => s, 15 => s, 16 => s, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  4 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => dh, 10 => dh, 11 => dh, 12 => s, 13 => s, 14 => s, 15 => s, 16 => s, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  5 => {5 => h, 6 => h, 7 => h, 8 => dh, 9 => dh, 10 => dh, 11 => dh, 12 => s, 13 => s, 14 => s, 15 => s, 16 => s, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  6 => {5 => h, 6 => h, 7 => h, 8 => dh, 9 => dh, 10 => dh, 11 => dh, 12 => s, 13 => s, 14 => s, 15 => s, 16 => s, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  7 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => dh, 11 => dh, 12 => h, 13 => h, 14 => h, 15 => h, 16 => h, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  8 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => dh, 11 => dh, 12 => h, 13 => h, 14 => h, 15 => h, 16 => h, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  9 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => dh, 11 => dh, 12 => h, 13 => h, 14 => h, 15 => h, 16 => h, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  10 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => h, 11 => dh, 12 => h, 13 => h, 14 => h, 15 => h, 16 => h, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s},
  11 => {5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => h, 11 => dh, 12 => h, 13 => h, 14 => h, 15 => h, 16 => h, 17 => s, 18 => s, 19 => s, 20 => s, 21 => s}
}
#each hash in soft represents dealer_card
soft = {
  2 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => dh, 18 => s, 19 => s, 20 => s, 21 => s},
  3 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => dh, 18 => dh, 19 => s, 20 => s, 21 => s},
  4 => {13 => dh, 14 => dh, 15 => dh, 16 => dh, 17 => dh, 18 => dh, 19 => s, 20 => s, 21 => s},
  5 => {13 => dh, 14 => dh, 15 => dh, 16 => dh, 17 => dh, 18 => dh, 19 => s, 20 => s, 21 => s},
  6 => {13 => dh, 14 => dh, 15 => dh, 16 => dh, 17 => dh, 18 => dh, 19 => dh, 20 => s, 21 => s},
  7 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => h, 18 => s, 19 => s, 20 => s, 21 => s},
  8 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => h, 18 => s, 19 => s, 20 => s, 21 => s},
  9 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => h, 18 => h, 19 => s, 20 => s, 21 => s},
  10 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => h, 18 => h, 19 => s, 20 => s, 21 => s},
  11 => {13 => h, 14 => h, 15 => h, 16 => h, 17 => h, 18 => s, 19 => s, 20 => s, 21 => s}
}

if first_card == "a" || second_card == "a"
  play = soft[dealer_card][hand]
  puts play
else
  play = hard[dealer_card][hand]
  puts play
end
