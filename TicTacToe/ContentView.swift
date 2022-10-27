//
//  ContentView.swift
//  TicTacToe
//
//  Created by caden christesen on 10/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tic-Tac-Toe")
                .font(.title)
                .bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)){
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
            }
        }
        .preferredColorScheme(.dark)
        //VStack{
          //  LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), //count: 3)){
                //Text("Placeholder")
                //Text("Placeholder")
            //}
        //}
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
