from flask import Flask
import requests
import objectpath

app = Flask(__name__)

@app.route('/')
def home():
    response = requests.get('https://api.coindesk.com/v1/bpi/currentprice.json')
    data = response.json()
    tree_data = objectpath.Tree(data)
    usd = list((tree_data.execute('$..USD')))
    price = dict(usd[0])
    return ("bitcoin usd current price is :" + price["rate"])

   
app.run(host="0.0.0.0")

    
