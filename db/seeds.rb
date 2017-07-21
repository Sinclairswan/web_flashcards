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
