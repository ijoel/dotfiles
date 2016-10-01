#! /usr/local/bin/python3

import json
import urllib.request

def main():


  loc_json = "http://ip-api.com/json"
  loc_result = urllib.request.urlopen(loc_json).read()
  loc_data = json.loads(loc_result.decode())
  latitude = str(loc_data['lat'])
  longitude = str(loc_data['lon'])

  baseurl = "https://query.yahooapis.com/v1/public/yql?"
  yql_query = 'SELECT item.condition FROM weather.forecast where woeid in (SELECT woeid FROM geo.places WHERE text="(' + latitude + ',' + longitude + ')")'
  yql_url = baseurl + urllib.parse.urlencode({'q':yql_query}) + "&format=json"
  result = urllib.request.urlopen(yql_url).read()
  data = json.loads(result.decode())
  print(data['query']['results']['channel']['item']['condition']['temp'] + '@' + data['query']['results']['channel']['item']['condition']['code'])

    
main()
  
