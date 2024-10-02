
import SwiftUI

struct VerticalStepperSection<Content: View>: View {
    var title: String
    var indicatorColor: Color = .gray
    var isFirstSection: Bool = false
    var isLastSection: Bool = false
    var content: [Content]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.textDarkLight)
                .padding(.leading, 16)
                .padding(.vertical, 8)

            VStack(alignment: .leading) {
                ForEach(content.indices, id: \.self) { index in

                    VerticalStepperRow(
                        isFirstRow: isFirstSection && index == 0,
                        isLastRow: isLastSection && index == content.count - 1,
                        content: content[index]
                    )
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// Helper enum for section position
enum StepperSectionPosition {
    case first, middle, last
}

#Preview {
    VerticalStepperSection(
        title: "Sample Section",
        isFirstSection: true,
        isLastSection: true,
        content: [
            StaffRowView(staff: staffData),
        ]
    )
    .background(Color.clear)
    .compositingGroup()
    .padding()
}
