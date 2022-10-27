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
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
