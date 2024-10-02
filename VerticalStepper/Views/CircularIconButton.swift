import SwiftUI

struct CircularIconButton: View {
    var systemIconName: String

    var backgroundColor: Color = .init(.purpleRed)

    var iconColor: Color = .init(.defaultWhite)

    var isButtonDisabled: Bool = false

    var action: (() -> Void)?

    var body: some View {
        Button(action: {
            action?()
        }, label: {
            Image(systemName: systemIconName)
                .frame(width: 15, height: 15)
                .foregroundColor(iconColor)
                .padding(12)
                .background(isButtonDisabled ? Color(.surfaceDisabled) : backgroundColor)
                .clipShape(Circle())
        })
        .disabled(isButtonDisabled)
    }
}

#Preview {
    CircularIconButton(
        systemIconName: "arrow.2.circlepath.circle",
        backgroundColor: .init(.defaultWhite),
        iconColor: .black,
        action: {
            print("Button pressed!")
        }
    )
}
