import Cocoa

@main
struct ButtonApp: App {
    var body: some Scene {
        Window("Button 按钮演示", id: "main") {
            ContentView()
        }
        .defaultSize(width: 500, height: 400)
    }
}
