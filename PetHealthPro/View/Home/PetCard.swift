//
//  PetCard.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetCard: View {
    let pet: Pet

    var body: some View {
        NavigationLink(destination: PetDetailView(pet: pet)) {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(pet.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(pet.breed)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }

                    Spacer()

                    Image(pet.photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                }

                Divider()

                VStack(alignment: .leading, spacing: 8) {
                    DetailRow(title: "Age", value: "\(pet.age) years")
                    DetailRow(title: "Weight", value: String(format: "%.1f lbs", pet.weight))
                }

                if let nextVaccination = pet.vaccinations.first {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Next Vaccination")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        HStack {
                            Text(nextVaccination.name)
                            Spacer()
                            Text(nextVaccination.nextDue, style: .date)
                        }
                        .font(.caption)
                    }
                    .padding(.top, 8)
                }
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 4)
        }
    }
}
