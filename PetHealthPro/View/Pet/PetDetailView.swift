//
//  PetDetailView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetDetailView: View {
    let pet: Pet
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            PetHeaderView(pet: pet)
            
            // Tab selection
            Picker("", selection: $selectedTab) {
                Text("Overview").tag(0)
                Text("Medical").tag(1)
                Text("Records").tag(2)
                Text("Care").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            // Tab content
            TabView(selection: $selectedTab) {
                PetOverviewView(pet: pet)
                    .tag(0)
                PetMedicalView(pet: pet)
                    .tag(1)
                PetRecordsView(pet: pet)
                    .tag(2)
                PetCareView(pet: pet)
                    .tag(3)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
