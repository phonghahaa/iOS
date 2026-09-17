import SwiftUI

struct TaskItem: Identifiable {
    let id = UUID()
    let icon: String
    let iconColor: Color
    let title: String
    let tag: String
    let tagColor: Color
    let tagBg: Color
    let time: String
    var isDone: Bool
}

struct ContentView: View {
    @State private var tasks: [TaskItem] = [
        TaskItem(
            icon: "book.closed.fill",
            iconColor: Color(red: 0.35, green: 0.65, blue: 1.0),
            title: "listen chapter 67",
            tag: "Study",
            tagColor: Color(red: 0.18, green: 0.45, blue: 0.85),
            tagBg: Color(red: 0.88, green: 0.93, blue: 1.0),
            time: "01:00",
            isDone: false
        ),
        TaskItem(
            icon: "dumbbell.fill",
            iconColor: Color(red: 0.95, green: 0.42, blue: 0.55),
            title: "Sleep 7 hours",
            tag: "Health",
            tagColor: Color(red: 0.85, green: 0.3, blue: 0.45),
            tagBg: Color(red: 1.0, green: 0.9, blue: 0.93),
            time: "17:00",
            isDone: true
        ),
        TaskItem(
            icon: "laptopcomputer",
            iconColor: Color(red: 0.35, green: 0.6, blue: 0.95),
            title: "Finish one day in class",
            tag: "Work",
            tagColor: Color(red: 0.75, green: 0.55, blue: 0.15),
            tagBg: Color(red: 1.0, green: 0.95, blue: 0.82),
            time: "20:00",
            isDone: false
        ),
        TaskItem(
            icon: "person.3.fill",
            iconColor: Color(red: 0.5, green: 0.58, blue: 0.7),
            title: "Call mysefl",
            tag: "Personal",
            tagColor: Color(red: 0.15, green: 0.6, blue: 0.35),
            tagBg: Color(red: 0.85, green: 0.96, blue: 0.88),
            time: "21:00",
            isDone: false
        )
    ]

    var body: some View {
        ZStack {
            Color(red: 0.88, green: 0.95, blue: 0.99)
                .ignoresSafeArea()

            VStack(spacing: 0) {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 18) {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Good Morning,")
                                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                                    .foregroundColor(Color(red: 0.15, green: 0.3, blue: 0.6))

                                HStack(spacing: 6) {
                                    Text("Nguyen Thien Phong")
                                        .font(.system(size: 26, weight: .heavy, design: .rounded))
                                        .foregroundColor(Color(red: 0.08, green: 0.22, blue: 0.58))

                                    Image(systemName: "leaf.fill")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(red: 0.25, green: 0.7, blue: 0.48))
                                }
                            }

                            Spacer()

                            Image(systemName: "lightbulb.fill")
                                .font(.system(size: 28))
                                .foregroundStyle(Color(red: 0.98, green: 0.78, blue: 0.2))
                                .padding(12)
                                .background(Color.white.opacity(0.85))
                                .clipShape(Circle())
                        }
                        .padding(.top, 10)

                        VStack(alignment: .leading, spacing: 3) {
                            Text("“Discipline today")
                            Text("creates a brighter tomorrow.”")
                        }
                        .font(.custom("Snell Roundhand", size: 17))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.18, green: 0.48, blue: 0.35))
                        .padding(.top, -6)

                        HStack(spacing: 12) {
                            HStack(spacing: 12) {
                                Image(systemName: "calendar")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color(red: 0.3, green: 0.45, blue: 0.9))

                                VStack(spacing: 0) {
                                    Text("sun")
                                        .font(.system(size: 12, weight: .medium))
                                        .foregroundColor(.gray)
                                    Text("14")
                                        .font(.system(size: 22, weight: .bold, design: .rounded))
                                        .foregroundColor(.black)
                                    Text("Jan 2026")
                                        .font(.system(size: 10, weight: .medium))
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 12)
                            .background(Color(red: 0.95, green: 0.97, blue: 1.0))
                            .cornerRadius(16)

                            HStack(spacing: 10) {
                                Image(systemName: "lightbulb.fill")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color(red: 0.98, green: 0.7, blue: 0.2))

                                VStack(alignment: .leading, spacing: 2) {
                                    Text("New day")
                                        .font(.system(size: 13, weight: .bold))
                                        .foregroundColor(Color(red: 0.6, green: 0.25, blue: 0.2))
                                    Text("New body!")
                                        .font(.system(size: 12, weight: .semibold))
                                        .foregroundColor(Color(red: 0.6, green: 0.25, blue: 0.2))
                                }
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 14)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(red: 1.0, green: 0.93, blue: 0.92))
                            .cornerRadius(16)
                        }
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(22)
                        .shadow(color: Color.black.opacity(0.04), radius: 6)

                        HStack {
                            HStack(spacing: 6) {
                                Image(systemName: "list.bullet.rectangle.portrait.fill")
                                    .foregroundColor(Color(red: 0.2, green: 0.35, blue: 0.7))
                                Text("My Tasks")
                                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                                    .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.55))
                            }

                            Spacer()

                            Button(action: {}) {
                                HStack(spacing: 4) {
                                    Image(systemName: "plus")
                                        .font(.system(size: 13, weight: .bold))
                                    Text("Add Task")
                                        .font(.system(size: 13, weight: .bold, design: .rounded))
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color(red: 0.25, green: 0.7, blue: 0.45))
                                .cornerRadius(14)
                            }
                        }
                        .padding(.top, 8)

                        VStack(spacing: 12) {
                            ForEach($tasks) { $task in
                                HStack(spacing: 14) {
                                    Button(action: {
                                        task.isDone.toggle()
                                    }) {
                                        if task.isDone {
                                            Image(systemName: "checkmark.circle.fill")
                                                .font(.system(size: 24))
                                                .foregroundColor(Color(red: 0.15, green: 0.65, blue: 0.4))
                                        } else {
                                            RoundedRectangle(cornerRadius: 6)
                                                .stroke(Color.gray.opacity(0.4), lineWidth: 2)
                                                .frame(width: 22, height: 22)
                                        }
                                    }

                                    Image(systemName: task.icon)
                                        .font(.system(size: 22))
                                        .foregroundColor(task.iconColor)
                                        .frame(width: 32)

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(task.title)
                                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                                            .foregroundColor(Color(red: 0.15, green: 0.2, blue: 0.3))

                                        Text(task.tag)
                                            .font(.system(size: 11, weight: .bold))
                                            .foregroundColor(task.tagColor)
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 3)
                                            .background(task.tagBg)
                                            .cornerRadius(8)
                                    }

                                    Spacer()

                                    Text(task.time)
                                        .font(.system(size: 13, weight: .medium))
                                        .foregroundColor(Color.gray.opacity(0.9))
                                }
                                .padding(16)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.03), radius: 5)
                            }
                        }
                    }
                    .padding(.horizontal, 18)
                    .padding(.bottom, 20)
                }

                HStack {
                    Spacer()
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                        Text("Today")
                            .font(.system(size: 11, weight: .medium))
                    }
                    .foregroundColor(Color(red: 0.18, green: 0.55, blue: 0.42))

                    Spacer()

                    VStack(spacing: 4) {
                        Image(systemName: "chart.bar.fill")
                            .font(.system(size: 20))
                        Text("Stats")
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

#Preview {
    ContentView()
}
