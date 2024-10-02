//
//  VerticalStepperRow.swift
//  VerticalStepper
//
//  Created by AMALITECH-PC-105889 on 10/1/24.
//

import SwiftUI

struct VerticalStepperRow<Content: View>: View {
    private let indicatorSize: CGFloat = 12
    private let minRowHeight: CGFloat = 100
    var indicatorColor: Color = .gray

    var isFirstRow: Bool = false
    var isLastRow: Bool = false

    var content: Content

    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            ZStack(alignment: .center) {
                GeometryReader { geometry in
                    let calculatedHeight = max(geometry.size.height, minRowHeight)
                    createVerticalLines(calculatedHeight)
                }.frame(width: indicatorSize)
                createContactDot()
                    .frame(minHeight: minRowHeight)
            }
            .frame(width: indicatorSize)

            content
        }
        .padding(.leading, -(indicatorSize / 2 - 1))
    }

    private func createVerticalLines(_ calculatedHeight: CGFloat) -> some View {
        VStack {
            if isFirstRow { createVerticalLine(height: calculatedHeight, offset: -(calculatedHeight / 2)) }
            if isLastRow { createVerticalLine(height: calculatedHeight, offset: calculatedHeight / 2) }
        }
    }

    private func createVerticalLine(height: CGFloat, offset: CGFloat) -> some View {
        Rectangle()
            .fill(Color.white)
            .frame(width: indicatorSize, height: height)
            .offset(y: offset)
            .blendMode(.destinationOut)
    }

    private func createContactDot() -> some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: indicatorSize, height: indicatorSize)
                .blendMode(.destinationOut)
            Circle()
                .fill(indicatorColor)
                .frame(width: indicatorSize - 4, height: indicatorSize - 4)
        }
    }
}

#Preview {
    VStack {
        VerticalStepperRow(isFirstRow: true, content: StaffRowView(staff: staffData))
        VerticalStepperRow(content: StaffRowView(staff: staffData))
        VerticalStepperRow(isLastRow: true, content: StaffRowView(staff: staffData))
    }
    .background(Color.clear)
    .compositingGroup()
    .padding()
}
