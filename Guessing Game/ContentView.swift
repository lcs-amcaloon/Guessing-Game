//
//  ContentView.swift
//  Guessing Game
//
//  Created by Angus McAloon on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userGuess = ""
    
    let target = Int.random(in: 1...100)
    
    @State private var feedback = ""
    
    var body: some View {
        
        NavigationView{
            Form{
                Section{
                Text("I'm thinking of a number between 1 and 100.")
                Text("Guess What it is!")
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
            }
            .navigationBarTitle("Guessing Game")
        }

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
        
        feedback = "You made a guess"
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
