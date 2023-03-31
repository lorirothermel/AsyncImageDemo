//
//  ContentView.swift
//  AsyncImageDemo
//
//  Created by Lori Rothermel on 3/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string:
                "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"))
            { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
                    .scaleEffect(10)
                    .tint(.red)
//                Image(systemName: "questionmark.square.dashed")
//                    .resizable()
//                    .scaledToFit()
            }
            .frame(width: 300, height: 300)
               
        }  // VStack

    }  // some View
}  // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
