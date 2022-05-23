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
            Text("Favorites Page - TODO")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }
            SpotForm()
                .tabItem {
                    Image(systemName:"square.and.pencil")
                    Text("Add")
                }
            }
        }
        
    }
}
