//
//  ContentView.swift
//  TravelDiscovery
//
//  Created by Luiz Hammerli on 09/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DiscoverCategoriesView()
            }.navigationTitle("Discover")
        }
    }
}

struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 8) {
                ForEach(0..<5, id: \.self) { num in
                    VStack(spacing: 5) {
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)

                        Text("Art")
                            .font(.system(size: 12, weight: .semibold))
                    }
                }
            }.padding(.horizontal, 20)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
