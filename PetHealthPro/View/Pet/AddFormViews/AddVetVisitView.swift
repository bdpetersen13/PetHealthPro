//
//  AddVetVisitView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct AddVetVisitView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Text("Add vet visit form") //TODO:  Placeholder
            }
            .navigationTitle("Add Vet Visit")
            .navigationBarItems(trailing: Button("Done") { dismiss() })
        }
    }
}
