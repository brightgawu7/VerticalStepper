
import SwiftUI

struct StaffRowView: View {
    @State var staff: Staff

    var body: some View {
        HStack {
            PhotoAvatar(imageURL: URL(string: staff.image ?? ""))
            Spacer()
            VStack(alignment: .leading, spacing: 2) {
                Text(staff.name)
                    .font(.system(size: 20))
                Text(staff.team.name)
                    .font(.system(size: 14))
            }.frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .foregroundStyle(.textDarkLight)
            Spacer()

            HStack(spacing: 5) {
                PhoneActionButton(phoneNumber: staff.phone)
                EmailActionButton(emailAddress: staff.email)
            }
        }
        .padding(15)
        .background(Color(.grayDarkLight))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    StaffRowView(staff: staffData)
        .padding()
}
