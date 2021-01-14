# Anki reView

An application for reviewing your anki flash cards on your reMarkable. 

## Project start date
This is still W.I.P. and doesn't contain useable functionality yet. 
Currently busy with exams, I plan to start somewhere begin february 2021.

## TODO's
- [ ] List Decks
- [ ] Single card review
- [ ] Review entire deck
- [ ] Queuing
    - [ ] Find out how anki determines the next card (how the queue works)
    - [ ] Use same queue algorithm in deck review
- [ ] Rating
    - [ ] Find out how anki determines which options get showed for rating a card (again, hard, good, easy)
    - [ ] Find out how anki determines the new ease and due date
    - [ ] Sending review result to anki connect

## Main idea
Have anki running on your computer with the anki-connect plugin installed. This script sends HTTP  requests to anki-connect, to get your decks and cards from a deck, so they can be viewed, rated (again, hard, good, easy) and the new parameters sent back to anki-connect.

This will not give the option (yet?) to create new cards. It's only for reviewing, and the css will probably not get rendered, only the plain text of your question and answer.