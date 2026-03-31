# SwiftUI macOS Button 按钮

## 简介

演示 SwiftUI 中 Button 按钮的各种用法，包括基础按钮、自定义样式、图标按钮、禁用状态等。

## 快速开始

```bash
cd swiftui-macos-button-demo
xcodegen generate
open SwiftUIButtonDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### 基础按钮

SwiftUI 按钮的基本用法：

```swift
Button("按钮文字") {
    // 点击时执行的代码
}
```

### 按钮动作

第二种语法，使用 `action:` 参数：

```swift
Button(action: {
    print("点击了")
}) {
    Text("显示文字")
}
```

### 自定义样式

通过传入 ViewBuilder 构建按钮内容：

```swift
Button(action: {}) {
    Text("自定义样式")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
}
```

### 图标按钮

使用 SF Symbols 图标：

```swift
Button(action: {}) {
    HStack {
        Image(systemName: "star.fill")
        Text("图标按钮")
    }
}
```

SF Symbols 是苹果提供的图标库，常用图标包括：
- `star.fill` - 星星
- `heart.fill` - 心形
- `gear` - 齿轮
- `plus` - 加号
- `trash` - 垃圾桶

### 禁用按钮

```swift
Button(action: {}) {
    Text("禁用按钮")
}
.disabled(true)
```

### 按钮角色

用于表达按钮的特殊用途：

```swift
// 危险操作（红色）
Button(role: .destructive) {
    print("删除")
} label: {
    Text("删除")
}

// 确认操作（绿色）
Button(role: .confirmation) {
    print("确认")
} label: {
    Text("确认")
}
```

## 完整示例

```swift
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("基础按钮") {
                print("点击")
            }

            Button(action: {}) {
                Text("自定义样式")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }

            Button(role: .destructive) {
                print("删除")
            } label: {
                Text("删除")
            }
        }
        .padding()
    }
}
```

## 完整讲解（中文）

Button 是 SwiftUI 中用于响应用户点击的组件。

### 点击动作

按钮的核心是 `action`，当用户点击按钮时会执行这个闭包内的代码。

### 自定义外观

按钮的内容可以是任意 SwiftUI 视图，通过 `label:` 参数传入 ViewBuilder。这允许完全自定义按钮的外观。

### .disabled()

使用 `.disabled(true)` 可以禁用按钮，被禁用的按钮不会响应点击事件，视觉上会变灰。

### SF Symbols

SF Symbols 是苹果提供的免费图标集，在 macOS 11+ 可用。使用 `Image(systemName: "图标名")` 创建图标视图。
