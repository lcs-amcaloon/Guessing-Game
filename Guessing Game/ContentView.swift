//
//  ContentView.swift
//  Guessing Game
//
//  Created by Angus McAloon on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userGuess = ""
    
    @State private var target = Int.random(in: 1...100)
    
    @State private var feedback = ""
    
    // Keep track of whether the game is over
    @State private var gameOver = false
    
    
    var body: some View {
        
        NavigationView{
            Form{
                Section{
                Text("I'm thinking of a number between 1 and 100. Guess What it is!")
                }
                
                Section{
                    TextField("Enter Guess", text: $userGuess)
                        .keyboardType(.decimalPad)
                }
                
                Section{
                    Button("Submit Guess:"){
                        //what we want the button to do
                        checkGuess()
                    }
                    
                    
                    Text("You Guessed: \(userGuess)")
                    Text("\(feedback)")
                }
                
                Section{
                    Button("Easy:"){
                        
                    }
                }
                
                if gameOver == true{
                    Section{
                        Button("New Game"){
                            //what we want the button to do
                            gameStart()
                        }
                    }
                }
                

            }
            .navigationBarTitle("Guessing Game")
        }

    }
    
    func gameStart(){
        target = Int.random(in: 1...100)
        userGuess = ""
        feedback = ""
        gameOver = false
    }

    func checkGuess(){
        guard let givenInteger = Int(userGuess)
        else {
            feedback = "Please provide an integer between 1 and 100"
            return
        }
        
        guard givenInteger > 0, givenInteger < 101
        else{
            feedback = "Please give a number greater than 1 and less than 101"
            return
        }
        
        if givenInteger == target{
            feedback = "You Guessed it!"
            gameOver = true
        }
        else if givenInteger > target{
            feedback = "Too High"
        }
        
        else if givenInteger < target{
            feedback = "Too low"
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
