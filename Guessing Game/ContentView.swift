//
//  ContentView.swift
//  Guessing Game
//
//  Created by Angus McAloon on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userGuess = ""
    
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
                    }
                    
                    Text("You Guessed \(userGuess)")
                }
            }
            .navigationBarTitle("LunchTime")
        }

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
