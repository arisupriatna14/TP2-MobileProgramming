//
//  ProfileView.swift
//  Rilabs
//
//  Created by Ari Supriatna on 22/04/24.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("name") private var name = ""
    @AppStorage("hobby") private var hobby = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $name)
                } header: {
                    Text("Name")
                }
                
                Section {
                    TextField("Hobby", text: $hobby)
                } header: {
                    Text("Hobby")
                }
            }
            .navigationTitle(Text("Profile"))
        }
    }
}

#Preview {
    ProfileView()
}
