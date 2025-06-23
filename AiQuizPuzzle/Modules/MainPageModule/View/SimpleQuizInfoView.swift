import SwiftUI

struct SimpleQuizInfoView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Quiz Info")
                .font(.largeTitle)
                .padding()
            Text("Quiz Details.")
                .foregroundColor(.secondary)
            Spacer()
        }
        .navigationTitle("Quiz Info")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground).ignoresSafeArea())
    }
}

#Preview {
    SimpleQuizInfoView()
}
