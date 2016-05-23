# -*- coding: utf-8 -*-
"""
Requests and cleaning library for hyperiums data survey app. This file contains
basic functions to authenticate, calculate and store data for a hyperiums player
in a central database in order to do a high-level analysis of alliance-wide
statistics and resources.
@author: jfurukawa
"""
import requests

def initAuth(auth):
    """Using game name, player name, and HAPI key, return the gameid, playerid 
    authkey needed to authenticate the player for the ensuing requests"""

    #using the 'auth' dict, send a get request to the HAPI    
    r = requests.get('http://hyp2.hyperiums.com/servlet/HAPI?', 
                      params = auth)
    
    #split the single-string response into a dictionary for use in later reqs                  
    authResponse = dict(item.split('=') for item in (r.content.split('&')))
    return authResponse
    
    
def generalPlanets(authDict, planets = '*', data = 'general'):
    """Using the authetication dictionary that was returned from the initial
    auth response, get info for all planets (even uncontrolled ones for the
    authenticated player. Defaults are general info for all planets."""
    
    #write additional parameters into dictionary to make general planet info request
    paramDict = {'gameid':authDict['gameid'],'playerid':authDict['playerid'],
                'authkey':authDict['authkey'],'request':'getplanetinfo',
                'planet':planets,'data':data,'failsafe':'123456'}
    r = requests.get('http://hyp2.hyperiums.com/servlet/HAPI?', 
                     params = paramDict)
    return r.content
    
def parsePlanetList(rawPlanets):
    """Clean the raw data string returned from the generalPlanets function. 
    This is specifically designed for the general info string of all planets. 
    It will return an array of dictionarys containing the data for each planet"""
    rawList = rawPlanets.split('&planet')
    rawList.remove('dummy=')

    #This array will contain one dictionary for the data of each planet    
    planetArray = []
    
    #Append a new dictionary to the array by splitting on delimiters
    for i in rawList:
        planetArray.append(dict(item.split('=') for item in (i.split('&'))))
    return planetArray


def aggIncome(pList, WTR = 0.25):
    """Calculates planet income for a given planet list in the format provided
    by the output for the parsePlanetList function"""
    TI = 0
    n = 0
    for i in pList:
        planetInc = []
        for k,v in i.iteritems():
            if k.startswith('activity') or k.startswith('income'):
                planetInc.append(int(v))  
            if k.startswith('upkeep'):
                upkeep = int(v)
            if k.startswith('capacity'):
                exploits = int(v)
        tradeRev = reduce(lambda x,y:x+y,planetInc)
        planetNetInc = (tradeRev*exploits-upkeep-tradeRev*exploits*WTR)
        print i[str(n)] + ' ' +str(planetNetInc)
        TI += planetNetInc
        n += 1
    return TI

def authRequest(authDict, additionalDict):
    paramDict = {'gameid':authDict['gameid'],'playerid':authDict['playerid'],
                'authkey':authDict['authkey']}
                
    paramDict.update(additionalDict)
    r = requests.get('http://hyp2.hyperiums.com/servlet/HAPI?', 
                     params = paramDict)
    return r.content

#hyp2.hyperiums.com/servlet/HAPI

if 'name' == '__main__':
    authParam = {'game':'Hyperiums7', 'player':'',
                 'hapikey':'JCuWk6'}
                 
    authDict = initAuth(authParam)
    resp = generalPlanets(authDict,data = 'trading')
    PL = parsePlanetList(resp)
    for i in PL:
        print i
    addDict = {'request':'getplayerinfo','failsafe':'',
               'targetplayer':'Loy'}
    authRequest(authDict,addDict)
#income = aggIncome(PL,WTR=.3)