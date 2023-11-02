from flask import Flask, request

app = Flask(__name__)

@app.route('/send-message', methods=['POST'])
def send_message():
    # Get data from the POST request
    data = request.json

    # Process the data (you can define your logic here)
    response_data = {'message': 'Received and processed data', 'data': data}
    print('_________Send mesg:', response_data)
    print()

    # Send a response
    return response_data

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
