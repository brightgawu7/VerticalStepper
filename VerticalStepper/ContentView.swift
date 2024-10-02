//
//  ContentView.swift
//  VerticalStepper
//
//  Created by AMALITECH-PC-105889 on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VerticalStepperWrapper(sections: [
                VerticalStepperSection(
                    title: "Section 1",
                    content: [
                        StaffRowView(staff: staffData),
                        StaffRowView(staff: staffData),
               
                    ]
                ),
                VerticalStepperSection(
                    title: "Section 2",
                    content: [
                        StaffRowView(staff: staffData),
                        StaffRowView(staff: staffData),
                        StaffRowView(staff: staffData),
                       
                    ]
                ),
            ])
        }
    }
}

#Preview {
    ContentView()
        .padding()
    
}
