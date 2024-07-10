from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    data = {
        'title': 'Marketing Website',
        'features': [
            {'name': 'Feature 1', 'description': 'Description of feature 1.'},
            {'name': 'Feature 2', 'description': 'Description of feature 2.'},
            {'name': 'Feature 3', 'description': 'Description of feature 3.'}
        ]
    }
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
