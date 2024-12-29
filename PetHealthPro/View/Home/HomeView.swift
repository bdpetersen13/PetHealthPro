//
//  HomeView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: PetHealthViewModel
    @State private var showingAddPet = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    // Pet Cards
                    ForEach(viewModel.pets) { pet in
                        PetCard(pet: pet)
                            .frame(maxWidth: .infinity)
                    }

                    // Add Pet Button
                    AddPetButton(showingAddPet: $showingAddPet)
                        .frame(maxWidth: .infinity)
                }
                .padding()
            }
            .navigationTitle("Pet Health")
        }
        .sheet(isPresented: $showingAddPet) {
            AddPetView()
        }
    }
}
