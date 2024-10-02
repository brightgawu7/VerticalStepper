import SwiftUI

struct EmailActionButton: View {
    var emailAddress: String?

    var isButtonDisabled: Bool {
        emailAddress?.isEmpty ?? true
    }

    var body: some View {
        CircularIconButton(
            systemIconName: "envelope",
            backgroundColor: .init(.defaultWhite),
            iconColor: .init(.black),
            isButtonDisabled: isButtonDisabled,
            action: {}
        )
    }
}

#Preview {
    VStack {
        EmailActionButton(emailAddress: "example@example.com")

        EmailActionButton(emailAddress: nil)
    }
}
