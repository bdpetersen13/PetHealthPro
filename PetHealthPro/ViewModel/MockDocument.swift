//
//  MockDocument.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct MockDocument {
    let title: String
    let date: String
    let type: String
    let size: String
}

let mockDocuments = [
    MockDocument(title: "Blood Work Results", date: "Jan 15, 2024", type: "PDF", size: "2.4 MB"),
    MockDocument(title: "X-Ray Images", date: "Dec 1, 2023", type: "DICOM", size: "15.7 MB"),
    MockDocument(title: "Vaccination Certificate", date: "Jan 15, 2024", type: "PDF", size: "1.2 MB")
]
