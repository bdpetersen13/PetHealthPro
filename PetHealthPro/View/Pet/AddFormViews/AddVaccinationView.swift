//
//  AddVaccinationView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct AddVaccinationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Text("Add vaccination form") // TODO: Placeholder
            }
            .navigationTitle("Add Vaccination")
            .navigationBarItems(trailing: Button("Done") { dismiss() })
        }
    }
}
