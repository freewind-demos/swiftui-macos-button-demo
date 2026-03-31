import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1. 基础按钮
            Button("基础按钮") {
                print("按钮点击")
            }

            // 2. 带动作的按钮
            Button(action: {
                print("按钮2被点击")
            }) {
                Text("带动作的按钮")
            }

            // 3. 自定义样式按钮
            Button(action: {
                print("自定义按钮点击")
            }) {
                Text("自定义样式")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }

            // 4. 边框按钮
            Button(action: {}) {
                Text("边框按钮")
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.blue, lineWidth: 2)
                    )
            }

            // 5. 图标按钮
            Button(action: {}) {
                HStack {
                    Image(systemName: "star.fill")
                    Text("图标按钮")
                }
            }

            // 6. 禁用状态按钮
            Button(action: {}) {
                Text("禁用按钮")
            }
            .disabled(true)

            Divider()

            // 7. 按钮角色（删除等危险操作）
            Button(role: .destructive) {
                print("删除")
            } label: {
                Text("删除按钮")
            }

            // 8. 强调操作（macOS 上无 ButtonRole.confirmation，用 borderedProminent 表示主确认）
            Button {
                print("确认")
            } label: {
                Text("确认按钮")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
