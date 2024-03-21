//
//  ContentView.swift
//  RollDice
//
//  Created by Mushik, Victoria on 3/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var number = 1
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Image("dice\(number)")
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        number = Int.random(in: 1...6)
                    }
                Button(action: {
                    number = Int.random(in: 1...6)
                }) {
                    Text("Roll").fontWeight(.bold)
                        .font(.system(size: 32))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
