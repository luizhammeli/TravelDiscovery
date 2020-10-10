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
                PopularDestinationsView()
                PopularRestaurantsView()
                TrendingCreatorsView()
            }.navigationTitle("Discover")
        }
    }
}

struct PopularDestinationsView: View {
    var body: some View {
        VStack(spacing: 18) {
            HStack {
                Text("Popular Destinations")
                    .font(Font.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(Font.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<10, id: \.self) { num in
                        Spacer()
                            .frame(width: 112, height: 150)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }.padding(.top, 8)
    }
}

struct PopularRestaurantsView: View {
    var body: some View {
        VStack(spacing: 18) {
            HStack {
                Text("Popular places to eat")
                    .font(Font.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(Font.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<10, id: \.self) { num in
                        Spacer()
                            .frame(width: 210, height: 68)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }.padding(.top, 8)
    }
}

struct TrendingCreatorsView: View {
    var body: some View {
        VStack(spacing: 18) {
            HStack {
                Text("Trending creators")
                    .font(Font.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(Font.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<10, id: \.self) { num in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }.padding(.top, 8)
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
            }.padding(.horizontal, 16)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
