import json
import urllib.request

def request(action, **params):
    return {'action': action, 'params': params, 'version': 6}

def invoke(action, **params):
    requestJson = json.dumps(request(action, **params)).encode('utf-8')
    response = json.load(urllib.request.urlopen(urllib.request.Request('http://localhost:8765', requestJson)))
    if len(response) != 2:
        raise Exception('response has an unexpected number of fields')
    if 'error' not in response:
        raise Exception('response is missing required error field')
    if 'result' not in response:
        raise Exception('response is missing required result field')
    if response['error'] is not None:
        raise Exception(response['error'])
    return response['result']

# invoke('createDeck', deck='test1')

# Decknames
result = invoke('deckNames')
print('got list of decks: {}'.format(result))

# Get cards from specific deck
deck = result[0]
result = invoke('findCards', query='deck:test1')
print(f"Found in {deck}: {result}")

cards = result
# result = invoke('customAction')
# print('Result: {}'.format(result))

# Cards in deck
result = invoke('getEaseFactors', cards=cards)
print('got ease factors: {}'.format(result))

# result = invoke('setEaseFactors', cards=cards, easeFactors=[0])
# print('got ease factors: {}'.format(result)) # returns [true, true], error: null

result = invoke('areDue', cards=cards)
print('cards due: {}'.format(result))

result = invoke('getIntervals', cards=cards)
print('card intervals: {}'.format(result)) # Positive -> Days, Negative -> Seconds

result = invoke('cardsInfo', cards=cards)
print('cards due: {}'.format(result))

