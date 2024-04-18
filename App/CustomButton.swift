import SwiftUI

struct CustomButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .frame(width: 350, height: 50)
            .padding()
            .foregroundStyle(Color.white)
            .background(Color.black.opacity(0.3))
            .clipShape(Capsule())
    }
}
