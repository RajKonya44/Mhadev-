import requests
from bs4 import BeautifulSoup

urls = [
    'https://www.facebook.com',
    'https://www.google.com',
    'https://www.servers.com'
]

for url in urls:
    print(f"Fetching titles from: {url}")
    try:
        response = requests.get(url)
        response.raise_for_status()  # এটি HTTP ত্রুটি সনাক্ত করে
        soup = BeautifulSoup(response.content, 'html.parser')
        titles = soup.find_all('h1')  # অথবা আপনার প্রয়োজনীয় ট্যাগ
        if titles:
            for title in titles:
                print(title.get_text())
        else:
            print("No titles found on the page.")
    except requests.exceptions.RequestException as e:
        print(f"Failed to retrieve the page. Error: {e}")
    print("\n" + "="*50 + "\n")
