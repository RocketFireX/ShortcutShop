
import SwiftUI

@main
struct ShortcutsShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    let blue = Color(red: 0.1, green: 0.65, blue: 0.85)

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color.cyan.opacity(0.35),
                    Color.green.opacity(0.15),
                    .white
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 22) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("SHORTCUTS")
                                .font(.caption.bold())
                                .tracking(4)
                            Text("Shop")
                                .font(.system(size: 42, weight: .black))
                            Text("Your automation paradise")
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: "leaf.fill")
                            .font(.system(size: 35))
                            .foregroundStyle(.green)
                    }
                    .foregroundStyle(.blue)

                    Text("WELCOME TO THE FUTURE")
                        .font(.caption.bold())
                        .foregroundStyle(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            LinearGradient(
                                colors: [.cyan, .blue, .green.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            in: RoundedRectangle(cornerRadius: 25)
                        )

                    Text("Explore shortcuts")
                        .font(.title2.bold())
                        .foregroundStyle(.blue)

                    shortcut("Morning Dashboard", "sun.max.fill", .orange)
                    shortcut("Clipboard Cleaner", "doc.on.clipboard.fill", .blue)
                    shortcut("Water Reminder", "drop.fill", .cyan)
                    shortcut("Wi-Fi Details", "wifi", .green)

                    Text("SHORTCUTS SHOP • V1.0")
                        .font(.caption2.bold())
                        .foregroundStyle(.blue.opacity(0.6))
                        .frame(maxWidth: .infinity)
                }
                .padding(20)
            }
        }
    }

    func shortcut(_ name: String, _ icon: String, _ color: Color) -> some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.white)
                .frame(width: 55, height: 55)
                .background(color.gradient, in: RoundedRectangle(cornerRadius: 17))

            VStack(alignment: .leading) {
                Text(name).font(.headline)
                Text("Explore this automation")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundStyle(.blue)
        }
        .padding(14)
        .background(.white.opacity(0.8), in: RoundedRectangle(cornerRadius: 22))
        .overlay(
            RoundedRectangle(cornerRadius: 22)
                .stroke(.white, lineWidth: 2)
        )
    }
}
