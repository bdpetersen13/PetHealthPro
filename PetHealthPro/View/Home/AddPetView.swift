//
//  AddPetView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct AddPetView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""
    @State private var breed = ""
    @State private var birthdate = Date()
    @State private var gender = "Female"
    @State private var weight = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Basic Information")) {
                    TextField("Name", text: $name)
                    TextField("Breed", text: $breed)
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                    Picker("Gender", selection: $gender) {
                        Text("Female").tag("Female")
                        Text("Male").tag("Male")
                    }
                    TextField("Weight (lbs)", text: $weight)
                        .keyboardType(.decimalPad)
                }
            }
            .navigationTitle("Add Pet")
            .navigationBarItems(
                leading: Button("Cancel") { dismiss() },
                trailing: Button("Save") {
                    // TODO: Save pet logic here
                    dismiss()
                }
            )
        }
    }
}

#Preview {
    AddPetView()
}
