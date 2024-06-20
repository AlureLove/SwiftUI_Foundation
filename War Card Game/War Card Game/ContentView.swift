//
//  ContentView.swift
//  War Card Game
//
//  Created by liuruixuan on 2024/6/7.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var CPUCard = "card13"

    @State var playerScore = 0
    @State var CPUScore = 0

    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()

            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(CPUScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }

    func deal() {
        let playerCardValue = Int.random(in: 2 ... 14)
        playerCard = String(format: "card%d", playerCardValue)

        let cpuCardValue = Int.random(in: 2 ... 14)
        CPUCard = String(format: "card%d", cpuCardValue)

        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue == cpuCardValue {
        } else {
            CPUScore += 1
        }
    }
}

#Preview {
    ContentView()
}
