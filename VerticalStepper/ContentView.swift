//
//  ContentView.swift
//  VerticalStepper
//
//  Created by AMALITECH-PC-105889 on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    var sectionsData: [(title: String, content: [StaffRowView])] = [
        ("Section 1", [StaffRowView(staff: staffData), StaffRowView(staff: staffData)]),
        ("Section 2", [StaffRowView(staff: staffData)]),
    ]

    var body: some View {
        VStack {
            VerticalStepperWrapper(
                sections: sectionsData.map { section in
                    VerticalStepperSection(
                        title: section.title,
                        content: section.content
                    )
                }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
