//
//  main screen.swift
//  Guessing Game
//
//  Created by Angus McAloon on 2020-11-18.
//

import SwiftUI

struct main_screen: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: EasyLevel()){
                    Text("Guessing Game: Easy")
                   
                    
                }
                
                NavigationLink(destination: ContentView()){
                    Text("Guessing Game: Medium")
                }
                
                NavigationLink(destination: HardLevel()){
                    Text("Guessing Game: Hard")
                }
                
            }
            .navigationBarTitle("Main Menu")
        }
    }
}

struct main_screen_Previews: PreviewProvider {
    static var previews: some View {
        main_screen()
    }
}
