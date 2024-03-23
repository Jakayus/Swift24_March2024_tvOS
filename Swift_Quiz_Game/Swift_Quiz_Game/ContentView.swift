//
//  ContentView.swift
//  Swift_Quiz_Game
//
//  Created by Joel Sereno on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                BannerImage()
                VStack(){
                    Spacer()
                    Text("Swift Prep - The GAME")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.primary)
                        .padding(.top, 100)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack{
                        NavigationLink(destination: RulesView()){
                            TileView(title: "Rules")
                                .navigationBarBackButtonHidden(false)
                        }
                        NavigationLink(destination: GameView()) {
                            TileView(title: "Start")
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }
}

struct TileView: View {
    let title: String
    var body: some View {
        Text("\(title)")
            .font(.title)
            .bold()
            .foregroundColor(Color.primary)
            .padding(.horizontal, 90)
            .padding(.vertical, 50)
    }
}


struct RulesView: View {
    
    let welcomeMessage = "Welcome to Swift Prep - THE GAME"
    let summary = "Tackle Swift Interview Prep Questions then fight a boss at the end!"
    
    let rules = "\nAnswer correctly and you will get aid in your final boss fight.\nAnswer incorrectly and the boss fight will be harder.\nAre you ready? Good luck!"
    let rule1 = "Answer correctly - you will get aid in your final boss fight."
    let rule2 = "Answer incorrectly - the boss fight will be harder."
    let goodLuckMessage = "Ready to begin? Good Luck!"

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(welcomeMessage)
                .font(.title)
                .padding(10)
            Text(summary)
                .font(.title2)
                .padding(10)
            Text(rules)
                .lineSpacing(10)
        }
        .bold()
    }
}



struct GameView: View {
    var body: some View {
        Text("Game View")
    }
}

struct BannerImage: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
        }
    }
}


#Preview {
    ContentView()
}
