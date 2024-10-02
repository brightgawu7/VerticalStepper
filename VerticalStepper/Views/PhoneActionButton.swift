import SwiftUI

struct PhoneActionButton: View {
    var phoneNumber: String?

    var isButtonDisabled: Bool {
        phoneNumber?.isEmpty ?? true
    }

    var body: some View {
        CircularIconButton(
            systemIconName: "phone.fill",
            backgroundColor: .init(.purpleRed),
            iconColor: .init(.defaultWhite),
            isButtonDisabled: isButtonDisabled,
            action: {}
        )
    }
}

#Preview {
    VStack {
        PhoneActionButton(phoneNumber: "+1234567890")

        PhoneActionButton(phoneNumber: nil)
    }
}
