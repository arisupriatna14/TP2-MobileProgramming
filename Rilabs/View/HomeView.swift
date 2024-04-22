//
//  HomeView.swift
//  Rilabs
//
//  Created by Ari Supriatna on 21/04/24.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("name") private var name = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [.init(), .init()]) {
                    ForEach(IconMaps.stubs, id: \.id) { data in
                        VStack {
                            Image(systemName: data.imageSystem)
                                .resizable()
                                .animation(.bouncy)
                                .frame(width: 100, height: 100)
                        }
                        .frame(width: 100, height: 150)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Text("Hi, \(name)")
                }
            }
            .navigationTitle(Text("Home"))
        }
    }
}

#Preview {
    HomeView()
}
