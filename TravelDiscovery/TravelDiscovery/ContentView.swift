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
                HStack(spacing: 12) {
                    ForEach(0..<10, id: \.self) { num in
                        Spacer()
                            .frame(width: 60, height: 60)
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

struct Category: Hashable {
    let name, imageName: String
}

struct DiscoverCategoriesView: View {
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "paintpalette.fill"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .top, spacing: 16) {
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 5) {
                        Image(systemName: category.imageName)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            //.imageScale(.large)
                            .frame(width: 66, height: 66)
                            .background(Color.gray)
                            .cornerRadius(33)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                        Text(category.name)
                            .font(.system(size: 11.5, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .lineLimit(1)
                    }.frame(width: 66)
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
