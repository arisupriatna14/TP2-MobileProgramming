//
//  OnboardingView.swift
//  Rilabs
//
//  Created by Ari Supriatna on 21/04/24.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("name") private var name = ""
    @AppStorage("hobby") private var hobby = ""
    @AppStorage("showOnboarding") private var showOnboarding = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                TextField("Hobby", text: $hobby)
                
                Button {
                    dismiss()
                    showOnboarding = false
                } label: {
                    Text("Submit")
                }
            }
            .navigationTitle(Text("Welcome"))
        }
    }
}

#Preview {
    OnboardingView()
}
