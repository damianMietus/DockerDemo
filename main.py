import requests
import json

def getResponse(url):
    
    resp = requests.get(url)
    jsonObj = resp.json()
    return jsonObj

if __name__ == "__main__":
        
    content = getResponse("https://httpbin.org/json")
    #Print entire response
    #print(json.dumps(content))
    print(content["slideshow"]["title"])
