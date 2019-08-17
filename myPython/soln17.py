import requests

url = 'https://www.nytimes.com/'

r = requests.get(url)

r_html = r.text

print(r_html)