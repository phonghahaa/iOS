import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image("Image 1")
                .resizable()
                .scaledToFill()
                .frame(width: 85, height: 85)
                .background(Color(red: 0.85, green: 0.83, blue: 0.98))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 5) {
                Text("Nguyen Thien Phong")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.black)

                Text("Student ID: SESEIU24021")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(Color(red: 0.35, green: 0.45, blue: 0.65))

                HStack(spacing: 6) {
                    Image(systemName: "chart.bar.fill")
                        .font(.system(size: 16))
                        .foregroundColor(.blue)

                    Text("GPA: 10.0")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color(red: 0.25, green: 0.35, blue: 0.55))
                }
                .padding(.top, 2)
            }

            Spacer()

            Text("Active")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color(red: 0.15, green: 0.6, blue: 0.35))
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color(red: 0.83, green: 0.96, blue: 0.88))
                .cornerRadius(12)
        }
        .padding(20)
        .background(.cyan)
        .cornerRadius(24)
        .shadow(color: Color.black.opacity(0.06), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        Color(red: 0.92, green: 0.96, blue: 1.0).ignoresSafeArea()
        ContentView()
    }
}
