# user1 = User.create(
#   first_name: "Joe",
#   last_name: "Shmoe",
#   email: "joe.shmoe@example.com",
#   password: "joe"
#   )

# user2 = User.create(
#   first_name: "Melinda",
#   last_name: "Banks",
#   email: "melinda.banks@example.com",
#   password: "melinda"
#   )

cardset = []
cardset << Card.create(question: "What is Austin?", answer: "city")
cardset << Card.create(question: "What is Texas?", answer: "state")
cardset << Card.create(question: "What is the U.S.?", answer: "country")
cardset << Card.create(question: "What is North America?", answer: "continent")

deck1 = Deck.create(name: "Birds")
deck2 = Deck.create(name: "Cats")
deck3 = Deck.create(name: "Dogs")
deck4 = Deck.create(name: "Coffee")
deck5 = Deck.create(name: "Computers")

deck1.cards << cardset

