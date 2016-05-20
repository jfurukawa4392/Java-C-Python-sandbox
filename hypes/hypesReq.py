import requests
import zlib

#saves gzip file with outName filename using paramDict as parameters
def saveHypFile(paramDict,outName):
    #hyperiums API URL
    url = 'http://hyp2.hyperiums.com/servlet/HAPI'
    
    #file open validation
    try:
        response = requests.get(url, allianceDict)
    except Exception as e:
        print(e)
    
    #print http headers to console 
    print response.headers

    #validate response contains non-null bytes
    data = response.content

        
    #decompress file from response content
    data = zlib.decompress(data, zlib.MAX_WBITS|32)
    with open(outName,'w') as outFile:
        outFile.write(data)
    return        

def convertToDict(listToSplit):
    retDict = {k:v for k,v in (x.split('=') for x in listToSplit)}
    return retDict
    

#splitData = [x.encode('utf-8') for x in r.text.split('&')]
#authParam = convertToDict(splitData)
#
#gameid = authParam['gameid']
#playerid = authParam['playerid'] 
#authkey = authParam['authkey']
#ST = authParam['servertime']


allianceDict = {'game':'Hyperiums7','player':'LooseyGoosey','passwd':'Marx1st3ra','request':'download','filetype':'alliances'}
url = 'http://hyp2.hyperiums.com/servlet/HAPI'

saveHypFile(allianceDict,'alliances.txt')
