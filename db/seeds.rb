content_for_deck_1 = {
  title: "All About Otters"
}

Deck.create(content_for_deck_1)

cards_for_deck_1 = [
  { deck_id: 1, question: "What is an otter's primary food source?", answer: "fish" },
  { deck_id: 1, question: "True or false? Otters spend the majority of their time on land.", answer: "true" },
  { deck_id: 1, question: "How many species of otters are there?", answer: "13" },
  { deck_id: 1, question: "True of false? Otters are native to Australia.", answer: "false" },
  { deck_id: 1, question: "True or false? Otters make and use tools.", answer: "true" },
  { deck_id: 1, question: "In years, what is the average life span of an otter in the wild?", answer: "10" }
]

Card.create(cards_for_deck_1)

User.create(name: "Lisa", email: "lisa@lisafrank.com", password: "unicorn")


content_for_deck_2 = {
  title: "All About Raccoons"
}

raccoons = Deck.create(content_for_deck_2)




card_1_for_deck_2 = {
  deck_id: 2,
  question: "What is a male raccoon called?",
  answer: "Boar"
}

card_1 = Card.create(card_1_for_deck_2)

card_2_for_deck_2 = {
  deck_id: 2,
  question: "What is a female raccoon called?",
  answer: "Sow"
}

card_2 = Card.create(card_2_for_deck_2)

card_3_for_deck_2 = {
  deck_id: 2,
  question: "Are raccoons herbivorous, carnivorous, omnivorous?",
  answer: "omnivorous"
}

card_3 = Card.create(card_3_for_deck_2)

card_4_for_deck_2 = {
  deck_id: 2,
  question: "True or False? Are Raccoons nocturnal?",
  answer: "True"
}

card_4 = Card.create(card_4_for_deck_2)

card_5_for_deck_2 = {
  deck_id: 2,
  question: "True or False? Do Raccoons hibernate?",
  answer: "False"
}

card_5 = Card.create(card_5_for_deck_2)

card_6_for_deck_2 = {
  deck_id: 2,
  question: "True or False? Raccoons can run 15 miles per hours?",
  answer: "True"
}

card_6 = Card.create(card_6_for_deck_2)

