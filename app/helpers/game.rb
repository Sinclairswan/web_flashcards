helpers do
def cut_the_deck(answer, card_id)
	#compare the answer to the user input and move from the card
	@correct = []
	@wrong = []
	result = @correct.count
	card = Card.find(card_id)
    if answer.downcase.split(//)  == card.answer.downcase.split(//)
      @correct << card.question
    else
      @wrong << card.question
    end
    result
 end

  def wrong
    @wrong
  end




  def end_of_round?(deck_id)
    deck = Deck.find(deck_id).cards.count
    if (@correct.count + @wrong.count) == deck
    end
  end
end
