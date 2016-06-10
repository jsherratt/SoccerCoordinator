
//------------------------------
//PROJECT 1: Soccer Coordinator
//------------------------------

import UIKit




//Array of dictionaries for all 18 players
var players = [["Name":"Joe Smith", "Height":"42", "Soccer Experience":"YES", "Guardian Name":"Jim and Jan Smith"],
               ["Name":"Jill Tanner", "Height":"36", "Soccer Experience":"YES", "Guardian Name":"Clara Tanner"],
               ["Name":"Bill Bon", "Height":"43", "Soccer Experience":"YES", "Guardian Name":"Sara and Jenny Bon"],
               ["Name":"Eva Gordon", "Height":"45", "Soccer Experience":"NO", "Guardian Name":"Wendy and Mike Gordon"],
               ["Name":"Matt Gill", "Height":"40", "Soccer Experience":"NO", "Guardian Name":"Charles and Sylvia Gill"],
               ["Name":"Kimmy Stein", "Height":"41", "Soccer Experience":"NO", "Guardian Name":"Bill and Hillary Stein"],
               ["Name":"Sammy Adams", "Height":"45", "Soccer Experience":"NO", "Guardian Name":"Jeff Adams"],
               ["Name":"Karl Saygan", "Height":"42", "Soccer Experience":"YES", "Guardian Name":"Heather Bledsoe"],
               ["Name":"Suzane Greenberg", "Height":"44", "Soccer Experience":"YES", "Guardian Name":"Henrietta Dumas"],
               ["Name":"Sal Dali", "Height":"41", "Soccer Experience":"NO", "Guardian Name":"Gala Dali"],
               ["Name":"Joe Kavalier", "Height":"39", "Soccer Experience":"NO", "Guardian Name":"Sam and Elaine Kavalier"],
               ["Name":"Ben Finkelstein", "Height":"44", "Soccer Experience":"NO", "Guardian Name":"Aaron and Jill Finkelstein"],
               ["Name":"Diego Soto", "Height":"41", "Soccer Experience":"YES", "Guardian Name":"Robin and Sarika Soto"],
               ["Name":"Chloe Alaska", "Height":"47", "Soccer Experience":"NO", "Guardian Name":"David and Jamie Alaska"],
               ["Name":"Arnold Willis", "Height":"43", "Soccer Experience":"NO", "Guardian Name":"Claire Willis"],
               ["Name":"Phillip Helm", "Height":"44", "Soccer Experience":"YES", "Guardian Name":"Thomas Helm and Eva Jones"],
               ["Name":"Les Clay", "Height":"42", "Soccer Experience":"YES", "Guardian Name":"Wynonna Brown"],
               ["Name":"Herschel Krustofski", "Height":"45", "Soccer Experience":"YES", "Guardian Name":"Hyman and Rachel Krustofski"]]

//Player teams
var dragons = [["":""]]
var raptors = [["":""]]
var sharks = [["":""]]

//Array for experienced players and other players
var experiencedPlayers = [["":""]]
var otherPlayers = [["":""]]

//Separate players based on experience
for player in players {
    
    //If a player is experienced, add them to the experienced array
    if player["Soccer Experience"] == "YES" {
        
        experiencedPlayers.append(player)
        
    }else if player["Soccer Experience"] == "NO" {
        
        otherPlayers.append(player)
    }
}

print(experiencedPlayers)
