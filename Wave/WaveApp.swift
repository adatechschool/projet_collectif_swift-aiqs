//
//  WaveApp.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import SwiftUI

@main
struct WaveApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            // LoginView()
            TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            SpotList()
                .tabItem {
                    Image(systemName:"globe.europe.africa")
                    Text("Spots")
                }
            Text("Favorites Page")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }
            Text("Search Page")
                .tabItem {
                    Image(systemName:"magnifyingglass.circle")
                    Text("Search")
                }
            }
        }
        
    }
}
