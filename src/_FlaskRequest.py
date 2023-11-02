import socket
import requests


data = {'key1': 'value1', 'key2': 'value2'}
hostname = socket.gethostname()
ip_address = socket.gethostbyname(hostname)
print('hostname:',hostname,'\nip_address:',ip_address)
url = f'http://{ip_address}:5000/send-message'  # Update with the appropriate URL


# requests.get(url)
response = requests.post(url, json=data)

if response.status_code == 200:
    # print(response.json())
    print('Request done.')
else:
    print('Request failed.')