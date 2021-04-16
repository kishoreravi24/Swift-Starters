//
//  ContentView.swift
//  Tutorials
//
//  Created by Kishore Jr on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isHearted = false
    @State private var numberOfTimes = 0
    var body: some View {
        VStack {
            Button(action: {
                self.isHearted.toggle()
                if isHearted {
                    self.numberOfTimes += 1
                }
            }) {
                if isHearted {
                    VStack {
                        Image("highlands")
                            .resizable()
                            .cornerRadius(30)
                            .padding()
                        Image(systemName: "heart.fill")
                            .padding()
                        Text("number of times heart clicked: \(numberOfTimes)")
                    }
                } else {
                    VStack {
                        Text("Wanna to look mountains, click love icon :)")
                            .foregroundColor(.black)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .italic()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        Image(systemName: "heart")
                            .padding()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }

                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
