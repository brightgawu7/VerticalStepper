//
//  staffData.swift
//  VerticalStepper
//
//  Created by AMALITECH-PC-105889 on 10/2/24.
//

import Foundation

var staffData: Staff = .init(
    id: UUID(),
    name: "Jonathan Alexander Morales",
    location: "San Francisco, California",
    team: Team(
        id: UUID(),
        name: "Enterprise Innovation Team"
    ),
    image: "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg",
    email: "jonathan.morales@company.com",
    phone: "+1-234-567-8901"
)
