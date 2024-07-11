from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/data', methods=['GET'])
def get_data():
    data = [
        {
            'nombre': 'Juán',
            'edad': 33,
            'es_estudiante': False,
            'notas': [86, 90, 78]
        },
        {
            'nombre': 'Sandra',
            'edad': 23,
            'es_estudiante': True,
            'notas': [69, 99, 98]
        },
        {
            'nombre': 'Alicia',
            'edad': 43,
            'es_estudiante': False,
            'notas': [99, 90, 88]
        }
    ]
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)