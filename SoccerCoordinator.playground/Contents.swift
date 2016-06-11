
//------------------------------
//PROJECT 1: Soccer Coordinator
//------------------------------

import UIKit

//------------------
//MARK: Variables
//------------------

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

//Player team names
let dragons = "Dragons"
let raptors = "Raptors"
let sharks = "Sharks"

//Practice details for each team
let dragonDetails = "March 17, 1pm"
let raptorDetails = "March 18, 1pm"
let sharkDetails = "March 17, 3pm"


//Player team arrays
var dragonsArray: [[String:String]] = []
var raptorsArray: [[String:String]] = []
var sharksArray: [[String:String]] = []
var teamsArray = ["dragons","raptorsArray","sharksArray"]

//Array for experienced players and inexperienced players
var experiencedPlayers:[[String:String]] = []
var inexperiencedPlayers: [[String:String]] = []

//----------------------------
//MARK: Player sorting logic
//----------------------------

//Separate players based on experience
func sortPlayersByExperience(playersArray: [[String:String]]) {
    
    //Iterate through the players array and check players experience. Add them to the appropriate array
    for player in playersArray {
        
        if player["Soccer Experience"] == "YES" {
            
            experiencedPlayers.append(player)
            
        }else if player["Soccer Experience"] == "NO" {
            
            inexperiencedPlayers.append(player)
        }
    }
}

sortPlayersByExperience(players)

//Separate players into three teams keeping the number of experienced players equal in each team
//The function takes a team array
func sortPlayersIntoTeams(typeOfPlayers typeOfPlayersArray: [[String:String]]) {
    
    var index = 0
    
    while index < typeOfPlayersArray.count {
        
        //Append a player to each team by incrementing index by 1. Then add the total number of teams to the index and repeat
        //Append players at index 0,1,2. Add 0 + 3. Append players at index 3,4,5. Add 3 + 3. Append players at index 6,7,8.
        dragonsArray.append(typeOfPlayersArray[index])
        raptorsArray.append(typeOfPlayersArray[index + 1])
        sharksArray.append(typeOfPlayersArray[index + 2])
        
        index = index + teamsArray.count
    }
}

sortPlayersIntoTeams(typeOfPlayers: experiencedPlayers)
sortPlayersIntoTeams(typeOfPlayers: inexperiencedPlayers)

//Sends a letter to the childs guardians letting them know what team their child was placed on and the practice schedule for the team.
//The function takes 3 arguments. A team array, a team name and the practice details.
func letterToGardians(team team:[[String:String]], teamName: String, practiceDetails: String) {
    
    for player in team{
        
        switch(teamName){
            
        case "Dragons":
            
            print("Dear \(player["Guardian Name"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
        case "Raptors":
            
            print("Dear \(player["Guardian Name"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
        case "Sharks":
            
            print("Dear \(player["Guardian Name"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
        default: "No team found"
            
        }
    }
}

//letterToGardians(team: dragonsArray, teamName: dragons, practiceDetails: dragonDetails)
//letterToGardians(team: raptorsArray, teamName: raptors, practiceDetails: raptorDetails)
//letterToGardians(team: sharksArray, teamName: sharks, practiceDetails: sharkDetails)

//---------------------
//MARK: Extra Credit
//---------------------

//Logic to ensure that each team's average height is within 1.5 inch of the others as well as having each team contain the same number of experienced players.

func calculateAverageHeight(team: [[String:String]]) -> Double{
    
    var totalHeight = 0.0
    
    for player in team {
        
        totalHeight = totalHeight + Double(player["Height"]!)!
    }
    
    return totalHeight / Double(team.count)
}

calculateAverageHeight(dragonsArray)
calculateAverageHeight(raptorsArray)
calculateAverageHeight(sharksArray)

func calculateDifferenceBetweenTeams(team1: Double, team2: Double) {
    
    var height = 0.0
    
    height = team1 - team2
    
    if height > 1.5 || height < 1.5 {
        
        print("Not in range")
        
    }else {
        print("Within range")
    }
}

calculateDifferenceBetweenTeams(calculateAverageHeight(dragonsArray), team2: calculateAverageHeight(raptorsArray))








