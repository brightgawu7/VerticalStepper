////
////  VerticalStepperWrapper.swift
////  VerticalStepper
////
////  Created by AMALITECH-PC-105889 on 10/1/24.
////
//
import SwiftUI

struct VerticalStepperWrapper<Content: View>: View {
    var indicatorColor: Color = .gray
    var sections: [VerticalStepperSection<Content>]

    var body: some View {
        ScrollView {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(indicatorColor)
                    .frame(width: 1)

                VStack {
                    ForEach(sections.indices, id: \.self) { index in
                        VerticalStepperSection(
                            title: sections[index].title,
                            indicatorColor: indicatorColor,
                            isFirstSection: index == 0,
                            isLastSection: index == sections.count - 1,
                            content: sections[index].content
                        )
                    }
                }
            }
            .padding(.leading, 8)
            .background(Color.clear)
            .compositingGroup()
            .clipped()
        }
    }
}

#Preview {
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
            ]
        ),
    ])
    .padding()
}
