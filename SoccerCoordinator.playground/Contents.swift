
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
let teamDragons = "Dragons"
let teamRaptors = "Raptors"
let teamSharks = "Sharks"

//Practice details for each team
let teamDragonDetails = "March 17, 1pm"
let teamRaptorDetails = "March 18, 1pm"
let teamSharkDetails = "March 17, 3pm"


//Player team arrays
var teamDragonsArray: [[String:String]] = []
var teamRaptorsArray: [[String:String]] = []
var teamSharksArray: [[String:String]] = []
var teamsArray = ["dragons","raptorsArray","sharksArray"]

//Player array sorted by height
var heightSortedPlayerArray: [[String:String]]

//Sorts the player array by height
heightSortedPlayerArray = playerArray.sorted { $0["HeightInInches"]! < $1["HeightInInches"]! }

//----------------------------
//MARK: Player sorting logic
//----------------------------

//Separate players based on experience
func sortPlayers(playersArray: [[String:String]]) {
    
    var index = 1
    var index2 = 1
    
    //Iterate through the players array and check players experience. Add them to the appropriate array
    for player in heightSortedPlayerArray {
        
        if player["SoccerExperience"] == "YES" {
            
            switch (index % 6) {
                
            case 1: teamSharksArray.append(player)
                
            case 2: teamDragonsArray.append(player)
                
            case 3: teamRaptorsArray.append(player)
                
            case 4: teamRaptorsArray.append(player)
                
            case 5: teamDragonsArray.append(player)
                
            case 0: teamSharksArray.append(player)
                
            default:
                break
            }
            
            index += 1
            
        }else if player["SoccerExperience"] == "NO" {
            
            switch (index2 % 6) {
                
            case 1: teamRaptorsArray.append(player)
                
            case 2: teamDragonsArray.append(player)
                
            case 3: teamSharksArray.append(player)
                
            case 4: teamSharksArray.append(player)
                
            case 5: teamDragonsArray.append(player)
                
            case 0: teamRaptorsArray.append(player)
                
            default:
                break
            }
            
            index2 += 1
        }
    }
}

//Sort player array
sortPlayers(playersArray: playerArray)

//----------------------------
//MARK: Letters to guardians
//----------------------------

//Sends a letter to the childs guardians letting them know what team their child was placed on and the practice schedule for the team.
//The function takes 3 arguments. A team array, a team name and the practice details.
func letterToGardians(team:[[String:String]], teamName: String, practiceDetails: String) {
    
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

letterToGardians(team: teamDragonsArray, teamName: teamDragons, practiceDetails: teamDragonDetails)
letterToGardians(team: teamRaptorsArray, teamName: teamRaptors, practiceDetails: teamRaptorDetails)
letterToGardians(team: teamSharksArray, teamName: teamSharks, practiceDetails: teamSharkDetails)

//---------------------
//MARK: Extra Credit
//---------------------

//Logic to ensure that each team's average height is within 1.5 inch of the others as well as having each team contain the same number of experienced players. Some of the height logic is coupled with the sorting logic further up.

//Calculates the average height of a team
func calculateAverageHeight(team: [[String:String]]) -> Double{
    
    var totalHeight = 0.0
    
    for player in team {
        
        totalHeight = totalHeight + Double(player["HeightInInches"]!)!
    }
    
    return totalHeight / Double(team.count)
}

calculateAverageHeight(team: teamDragonsArray)
calculateAverageHeight(team: teamRaptorsArray)
calculateAverageHeight(team: teamSharksArray)

//Checks the height difference bettween two teams
func calculateDifferenceBetweenTeams(team1: Double, team2: Double) -> Bool {
    
    var height = 0.0
    var withinRange = false
    
    height = team1 - team2
    
    if height > 1.5 || height < -1.5 {
        
        withinRange = false
        
    }else {

        withinRange = true
    }
    
    return withinRange
}

calculateDifferenceBetweenTeams(team1: calculateAverageHeight(team: teamDragonsArray), team2: calculateAverageHeight(team: teamRaptorsArray))
calculateDifferenceBetweenTeams(team1: calculateAverageHeight(team: teamDragonsArray), team2: calculateAverageHeight(team: teamSharksArray))
calculateDifferenceBetweenTeams(team1: calculateAverageHeight(team: teamRaptorsArray), team2: calculateAverageHeight(team: teamSharksArray))




