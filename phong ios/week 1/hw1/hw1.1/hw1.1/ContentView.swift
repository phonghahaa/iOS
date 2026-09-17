import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.88, green: 0.94, blue: 0.99)
                .ignoresSafeArea()
            VStack(spacing: 0) {
                            HStack(alignment: .top) {
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Small Steps")
                                    HStack(spacing: 4) {
                                        Text("Big Dreams")
                                        Image(systemName: "heart.fill")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color(red: 0.95, green: 0.45, blue: 0.55))
                                    }
           
                    }
                    .font(.custom("Marker Felt", size: 22))
                    .foregroundColor(Color(red: 0.22, green: 0.38, blue: 0.65))
                    .padding(.top, 10)
      
                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.22, green: 0.38, blue: 0.65))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.06), radius: 4)
                    }
                }
                .padding(.horizontal, 22)
                .padding(.bottom, 20)

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        ZStack {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 154, height: 154)

                            Circle()
                                .fill(Color(red: 0.86, green: 0.85, blue: 0.98))
                                .frame(width: 140, height: 140)

                            Image("Image 1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110, height: 110)
                        }
                        .offset(y: 60)
                        .zIndex(2)

                        VStack(spacing: 16) {
                            Spacer()
                                .frame(height: 52)

                            VStack(spacing: 6) {
                                Text("Nguyen Thien Phong")
                                    .font(.system(size: 24, weight: .heavy, design: .rounded))
                                    .foregroundColor(Color(red: 0.12, green: 0.15, blue: 0.2))

                                HStack(spacing: 5) {
                                    Text("Always learning, always growing")
                                    Image(systemName: "heart")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color(red: 0.95, green: 0.45, blue: 0.55))
                                }
                                .font(.system(size: 13, weight: .medium, design: .rounded))
                                .foregroundColor(Color(red: 0.45, green: 0.52, blue: 0.7))
                            }

                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 14), GridItem(.flexible(), spacing: 14)], spacing: 14) {
                                InfoCard(
                                    icon: "person.fill",
                                    iconColor: Color(red: 0.15, green: 0.55, blue: 1.0),
                                    title: "Student ID",
                                    value: "SESEIU24021",
                                    bgColor: Color(red: 0.92, green: 0.96, blue: 1.0)
                                )

                                InfoCard(
                                    icon: "birthday.cake.fill",
                                    iconColor: Color(red: 0.95, green: 0.38, blue: 0.52),
                                    title: "Age",
                                    value: "67",
                                    bgColor: Color(red: 0.99, green: 0.92, blue: 0.94)
                                )

                                InfoCard(
                                    icon: "chart.bar.fill",
                                    iconColor: Color(red: 0.18, green: 0.72, blue: 0.48),
                                    title: "GPA",
                                    value: "10.0",
                                    bgColor: Color(red: 0.91, green: 0.97, blue: 0.94)
                                )

                                InfoCard(
                                    icon: "graduationcap.fill",
                                    iconColor: Color(red: 0.52, green: 0.45, blue: 0.95),
                                    title: "Student",
                                    value: "true",
                                    bgColor: Color(red: 0.94, green: 0.93, blue: 0.99)
                                )
                            }
                            .padding(.horizontal, 16)

                            HStack(spacing: 10) {
                                Text("“")
                                    .font(.system(size: 28, weight: .heavy))
                                    .foregroundColor(Color(red: 0.95, green: 0.65, blue: 0.28))

                                Text("\"Better me, a brighter tomorrow!\"")
                                    .font(.custom("Snell Roundhand", size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.55, green: 0.3, blue: 0.18))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.8)

                                Spacer()

                                Image(systemName: "leaf.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(red: 0.35, green: 0.68, blue: 0.38))
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 14)
                            .background(Color(red: 0.99, green: 0.96, blue: 0.91))
                            .cornerRadius(18)
                            .padding(.horizontal, 16)

                            Button(action: {}) {
                                HStack(spacing: 8) {
                                    Image(systemName: "paperplane")
                                        .font(.system(size: 16, weight: .bold))
                                    Text("Edit Profile")
                                        .font(.system(size: 17, weight: .bold, design: .rounded))
                                }
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14)
                                .background(Color(red: 0.32, green: 0.68, blue: 0.54))
                                .cornerRadius(18)
                            }
                            .padding(.horizontal, 16)
                            .padding(.bottom, 16)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
                    }
                }

                HStack {
                    Spacer()
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                        Text("Profile")
                            .font(.system(size: 11, weight: .medium))
                    }
                    .foregroundColor(Color(red: 0.18, green: 0.55, blue: 0.42))

                    Spacer()

                    VStack(spacing: 4) {
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "book.pages.fill")
                                .font(.system(size: 20))
                            Circle()
                                .fill(Color.red)
                                .frame(width: 7, height: 7)
                                .offset(x: 3, y: -2)
                        }
                        Text("Subjects")
                            .font(.system(size: 11, weight: .medium))
                    }
                    .foregroundColor(Color(red: 0.62, green: 0.66, blue: 0.74))

                    Spacer()

                    VStack(spacing: 4) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 20))
                        Text("Settings")
                            .font(.system(size: 11, weight: .medium))
                    }
                    .foregroundColor(Color(red: 0.62, green: 0.66, blue: 0.74))

                    Spacer()
                }
                .padding(.top, 10)
                .padding(.bottom, 6)
                .background(Color.white)
            }
        }
    }
}

struct InfoCard: View {
    let icon: String
    let iconColor: Color
    let title: String
    let value: String
    let bgColor: Color

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(iconColor)
                .frame(width: 32)

            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundColor(Color(red: 0.35, green: 0.42, blue: 0.56))
                Text(value)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.12, green: 0.15, blue: 0.22))
            }
            Spacer()
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 14)
        .background(bgColor)
        .cornerRadius(18)
    }
}

#Preview {
    ContentView()
}
