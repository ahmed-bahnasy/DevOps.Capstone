#!/usr/bin/env python
#import click

#@click.command()
#def hello():
#    click.echo('Hello World!')
#if __name__ == '__main__':
#    hello()




from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
	return 'Hello, World!'

if __name__ == "__main__":
	app.run(host='0.0.0.0', port=80, debug=True)
