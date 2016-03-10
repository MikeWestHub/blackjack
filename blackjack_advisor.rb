


puts "What is your first card? Use 10 for face cards."
  first_card = gets.chomp
  first_card.to_s.downcase

puts "What is your second card? Use 10 for face cards."
  second_card = gets.chomp
  first_card.to_s.downcase

puts "What is the dealer showing?"
  dealer_card = gets.chomp
  first_card.to_s.downcase

hand = first_card.to_i + second_card.to_i

puts "#{first_card} #{second_card} #{dealer_card} #{hand}"


# dealer = {2,
#           3,
#           4,
#           5,
#           6,
#           7,
#           8,
#           9,
#           10,
#           A}
#Hard
# h_5 =
# h_6 =
# h_7 =
# h_8 =
# h_9 =
# h_10 =
# h_11 =
# h_12 =
# h_13 =
# h_14 =
# h_15 =
# h_16 =
# h_17 =
# h_18 =
# h_19 =
# h_20 =
# h_21 =
#
# #Soft
# s_13 =
# s_14 =
# s_15 =
# s_16 =
# s_17 =
# s_18 =
# s_19 =
# s_20 =
# s_21 =
