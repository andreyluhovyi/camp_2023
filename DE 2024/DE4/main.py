
from flask import Flask, jsonify, request

class RecordAPI:
    def __init__(self):
        self.records = []

    def add_record(self, record):
        self.records.append(record)
        return f'New added record: {record}'

    def get_records(self):
        return {'last 10 added records': self.records[-10:]}

    def delete_record(self, record):
        if record in self.records:
            self.records.remove(record)
            return f'Removed record: {record}'
        else:
            return 'Record not found'

app = Flask(__name__)
api = RecordAPI()

@app.route('/api/add_record/<record>', methods=['POST'])
def add_record(record):
    message = api.add_record(record)
    return jsonify(message=message), 200

@app.route('/api/last_10_records', methods=['GET'])
def get_records():
    records = api.get_records()
    return jsonify(records), 200

@app.route('/api/delete_record/<record>', methods=['DELETE'])
def delete_record(record):
    message = api.delete_record(record)
    return jsonify(message=message), 200

if __name__ == '__main__':
    app.run(port=5000)
