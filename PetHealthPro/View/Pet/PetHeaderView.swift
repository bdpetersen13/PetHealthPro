//
//  PetHeaderView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetHeaderView: View {
    let pet: Pet
    
    var body: some View {
        ZStack {
            // Image background
            Image("pet_health_pro_header")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.horizontal)
                .frame(height: 120)
                .offset(y: -60)
            
            // Content
            VStack(spacing: 16) {
                Image(pet.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 4)
                
                VStack(spacing: 4) {
                    Text(pet.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(pet.breed) • \(pet.age) years • \(pet.gender)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }
}
