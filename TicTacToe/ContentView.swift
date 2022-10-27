//
//  ContentView.swift
//  TicTacToe
//
//  Created by caden christesen on 10/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "", count: 9)
    @State private var xTurn = true
    @State private var gameOver = false
    @State private var winMessage = ""
    var body: some View {
        VStack {
            Text("Tic-Tac-Toe")
                .font(.title)
                .bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 3), spacing: 15){
                ForEach(0..<9){ index in
                    ZStack{
                        Color.blue
                        Text(moves[index])
                            .font(.system(size: 90))
                            .fontWeight(.heavy)
                        Color.white
                            .opacity(moves[index] == "" ? 1 : 0)
                    }
                    .frame(width: 120, height: 120, alignment: .center)
                    .cornerRadius(30)
                    .onTapGesture {
                        withAnimation(.default){
                            if moves[index] == ""{
                                moves[index] = xTurn ? "X" : "O"
                                xTurn.toggle()
                            }
                        }
                    }
                    .rotation3DEffect(.init(degrees: moves[index] != "" ? 180 : 0), axis: (x: 0.0, y: 1.0, z: 10.0))
                }
            }
        }
        .preferredColorScheme(.dark)
        .alert(isPresented: $gameOver){
            Alert(title: Text(winMessage))
         }
         .onChange(of: moves) { newValue in
             checkForWinner()
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    private func checkForWinner(){
        if moves[0] != "" && moves[0] == moves[1] && moves[1] == moves[2]{
            winMessage = "\(moves [0]) is the winner!"
            gameOver = true
        }
    }
}
