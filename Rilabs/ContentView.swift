//
//  ContentView.swift
//  Rilabs
//
//  Created by Ari Supriatna on 21/04/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showOnboarding") private var showOnboarding = true
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MapView()
                .tabItem {
                    Label("Maps", systemImage: "map")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .fullScreenCover(isPresented: $showOnboarding) {
            OnboardingView()
        }
    }
}

#Preview {
    ContentView()
}
