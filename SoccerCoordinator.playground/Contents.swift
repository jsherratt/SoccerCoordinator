
//------------------------------
//PROJECT 1: Soccer Coordinator
//------------------------------

import UIKit
import Foundation

//------------------
//MARK: Variables
//------------------

//Each player with their own collection of data
let player1: [String:String] = ["Name": "Joe Smith",
                             "HeightInInches": "42",
                             "SoccerExperience": "YES",
                             "GuardianNames": "Jim and Jan Smith"]

let player2: [String:String] = ["Name": "Jill Tanner",
                             "HeightInInches": "36",
                             "SoccerExperience": "YES",
                             "GuardianNames" : "Clara Tanner"]

let player3: [String:String] = ["Name": "Bill Bon",
                             "HeightInInches": "43",
                             "SoccerExperience": "YES",
                             "GuardianNames": "Sara and Jenny Bon"]

let player4: [String:String] = ["Name": "Eva Gordon",
                             "HeightInInches": "45",
                             "SoccerExperience": "NO",
                             "GuardianNames": "Wendy and Mike Gordon"]

let player5: [String:String] = ["Name": "Matt Gill",
                             "HeightInInches": "40",
                             "SoccerExperience": "NO",
                             "GuardianNames": "Charles and Sylvia Gill"]

let player6: [String:String] = ["Name": "Kimmy Stein",
                             "HeightInInches": "41",
                             "SoccerExperience": "NO",
                             "GuardianNames": "Bill and Hillary Stein"]

let player7: [String:String] = ["Name": "Sammy Adams",
                             "HeightInInches": "45",
                             "SoccerExperience": "NO",
                             "GuardianNames": "Jeff Adams"]

let player8: [String:String] = ["Name": "Karl Saygan",
                             "HeightInInches": "42",
                             "SoccerExperience": "YES",
                             "GuardianNames": "Heather Bledsoe"]

let player9: [String:String] = ["Name": "Suzane Greenberg",
                             "HeightInInches": "44",
                             "SoccerExperience": "YES",
                             "GuardianNames": "Henrietta Dumas"]

let player10: [String:String] = ["Name": "Sal Dali",
                              "HeightInInches": "41",
                              "SoccerExperience": "NO",
                              "GuardianNames": "Gala Dali"]

let player11: [String:String] = ["Name": "Joe Kavalier",
                              "HeightInInches": "39",
                              "SoccerExperience": "NO",
                              "GuardianNames": "Sam and Elaine Kavalier"]

let player12: [String:String] = ["Name": "Ben Finkelstein",
                              "HeightInInches": "44",
                              "SoccerExperience": "NO",
                              "GuardianNames": "Aaron and Jill Finkelstein"]

let player13: [String:String] = ["Name": "Diego Soto",
                              "HeightInInches": "41",
                              "SoccerExperience": "YES",
                              "GuardianNames": "Robin and Sarika Soto"]

let player14: [String:String] = ["Name": "Chloe Alaska",
                              "HeightInInches": "47",
                              "SoccerExperience": "NO",
                              "GuardianNames": "David and Jamie Alaska"]

let player15: [String:String] = ["Name": "Arnold Willis",
                              "HeightInInches": "43",
                              "SoccerExperience": "NO",
                              "GuardianNames": "Claire Willis"]

let player16: [String:String] = ["Name": "Phillip Helm",
                              "HeightInInches": "44",
                              "SoccerExperience": "YES",
                              "GuardianNames": "Thomas Helm and Eva Jones"]

let player17: [String:String] = ["Name": "Les Clay",
                              "HeightInInches": "42",
                              "SoccerExperience": "YES",
                              "GuardianNames": "Wynonna Brown"]

let player18: [String:String] = ["Name": "Herschel Krustofski",
                              "HeightInInches": "45",
                              "SoccerExperience": "YES",
                              "GuardianNames": "Hyman and Rachel Krustofski"]

//Array of all the players
var playerArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

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
        
        if player["SoccerExperience"] == "YES" {
            
            experiencedPlayers.append(player)
            
        }else if player["SoccerExperience"] == "NO" {
            
            inexperiencedPlayers.append(player)
        }
    }
}

sortPlayersByExperience(playerArray)

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

//----------------------------
//MARK: Letters to guardians
//----------------------------

//Sends a letter to the childs guardians letting them know what team their child was placed on and the practice schedule for the team.
//The function takes 3 arguments. A team array, a team name and the practice details.
func letterToGardians(team team:[[String:String]], teamName: String, practiceDetails: String) {
    
    for player in team{
        
        switch(teamName){
            
        case "Dragons":
            
            print("Dear \(player["GuardianNames"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
        case "Raptors":
            
            print("Dear \(player["GuardianNames"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
        case "Sharks":
            
            print("Dear \(player["GuardianNames"]!), \n Congratulations your child, \(player["Name"]!) has been placed on the \(teamName). We are so excited to have them on the team.\n The practice schedule for the team is: \(practiceDetails).\n Best of luck this season!\n")
            
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
        
        totalHeight = totalHeight + Double(player["HeightInInches"]!)!
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








