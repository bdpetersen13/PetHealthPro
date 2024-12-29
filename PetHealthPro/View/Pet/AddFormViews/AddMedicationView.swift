//
//  AddMedicationView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct AddMedicationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Text("Add medication form") // TODO: Placeholder
            }
            .navigationTitle("Add Medication")
            .navigationBarItems(trailing: Button("Done") { dismiss() })
        }
    }
}
