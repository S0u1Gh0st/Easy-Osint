import serpapi
import os
from dotenv import load_dotenv

"""

"""

load_dotenv()
apik = os.getenv("SERPAPI_KEY")
client = serpapi.Client(api_key=apik)

print("google|duckduckgo|bing")
searcher = input("buscador > ")
print("https://serpapi.com/google-countries")
location = input("Locacion > ")
print("Comandos---\nsite, inurl, allinurl, filetype, intitle, allintitle, intext, allintext, cache, related, link, info, define, numrange o n1..n2, (AND OR NOT), (* " " -+)@ Ubicacion\n---\nhttps://www.exploit-db.com/google-hacking-database")
query = input("Busqueda > ")
cantidad = input("Cantidad de busquedas > ")

result = client.search(
	q=query,
	engine=searcher,
	gl=location,
	num=cantidad,
)
for item in result["organic_results"]:
	print(item['title'])
	print(item['date'])
	print(item['link'])
	print(item['snippet'])
	print("-----------------------")
