//
//  ContentView.swift
//  FlipCardAnimation
//
//  Created by Nandini Vithlani on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isFlipped = false

    var body: some View {
        VStack {
            if isFlipped {
                CardBack()
            } else {
                CardFront()
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.5)) {
                self.isFlipped.toggle()
            }
        }
        .padding()
        .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 1, y: 0, z: 0))
    }
}

struct CardFront: View {
    var body: some View {
        ZStack {
            Image("CardFront")
                .foregroundColor(.white)
        }
    }
}

struct CardBack: View {
    var body: some View {
        ZStack {
            Image("CardBack")
                .foregroundColor(.white)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
