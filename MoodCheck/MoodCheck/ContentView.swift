//
//  ContentView.swift
//  MoodCheck
//
//  Created by rawan alamirah on 1/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var mood = ""

    var body: some View {
    VStack{
        HStack{
            Text("MoodCheck")
                .fontWeight(.bold)
                .padding()
                .font(.system(size: 40))
            Spacer()
            }
        Spacer()
    
        Text("I Feel \(mood)")
            .fontWeight(.regular)
            .padding()
            .font(.system(size: 30))
        
        HStack(){
            Button(action: {
                mood = "Happy"
            }, label: {
                Text("😄")
            })
            Button(action: {
                mood = "Sad"
            }, label: {
                Text("😞")
                
            })
            Button(action: {
                mood = "Meh"
            }, label: {
                Text("😕")
            })
            Button(action: {
                mood = "Fine"
            }, label: {
                Text("😇")
            })
        }.font(.system(size: 40, weight: .bold))
         .padding()
        
        
        Spacer()
        
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
