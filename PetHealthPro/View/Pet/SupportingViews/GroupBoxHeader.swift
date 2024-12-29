//
//  GroupBoxHeader.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct GroupBoxHeader: View {
    let title: String
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            Button(action: action) {
                HStack {
                    Image(systemName: "plus")
                    Text(buttonTitle)
                }
            }
        }
    }
}
