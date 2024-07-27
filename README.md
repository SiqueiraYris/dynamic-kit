# DynamicKit
[![Version](https://img.shields.io/badge/Version-1.0.0-green.svg?style=flat-square)](https://img.shields.io/badge/version-1.21.0-green.svg?style=flat-square)
[![Swift](https://img.shields.io/badge/Swift-5.7_5.8_5.9-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.7_5.8_5.9-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-blue.svg?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-blue.svg?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-green?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-green?style=flat-square)
[![CocoaPods](https://img.shields.io/badge/CocoaPods-compatible-green?style=flat-square)](https://img.shields.io/badge/CocoaPods-compatible-green?style=flat-square)
[![License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](https://opensource.org/licenses/MIT)

DynamicKit is a powerful and easy-to-use Swift library for reactive data management on iOS. Designed to simplify reactive programming, DynamicKit provides a clean and intuitive interface for binding and observing data changes.

## Features
- Dynamic Binding: Allows dynamic value binding and reacting to changes in real-time.
- Dynamic Observer: Stores and manages a list of observed values over time.

## Architecture
The Dynamic<T> class is responsible for managing value binding and notifying listeners about data changes. The DynamicObserver<T> class stores a list of values that have been observed.

### Key Components
- listener: A listener that is called whenever the value changes.
- observer: An observer that records the changed values.
- value: The current observed value, which notifies the listener and observer when changed.

### Methods
- bind(listener: Listener?): Binds a listener to the value, which will be notified of future changes.
- bindAndFire(listener: Listener?): Binds a listener to the value and notifies it immediately.
- callListener(): Calls the listener on the main thread.

## Installation

### Swift Package Manager
Add StorageKit to your project via Swift Package Manager. In Xcode, go to File > Swift Packages > Add Package Dependency and enter the repository URL:
```
https://github.com/SiqueiraYris/dynamic-kit
```

If you want to use this library inside a Swift Package Manager file, add it to the dependencies value of your Package.swift:
```swift
dependencies: [
    .package(url: "https://github.com/SiqueiraYris/dynamic-kit", branch: "main")
]
```
And then add it to the target:

```swift
.product(name: "DynamicKit", package: "dynamic-kit")
```

### CocoaPods
To integrate DynamicKit into your Xcode project using CocoaPods, specify it in your Podfile:
```
pod 'DynamicKit', :git => 'https://github.com/SiqueiraYris/dynamic-kit'
```

## Usage

### Dynamic

#### Binding data
```swift
let dynamicString = Dynamic("Hello, World!")
dynamicString.bind { value in
    print("Value: \(value)")
}
dynamicString.value = "Hello, Swift!"
// Output: Value: Hello, Swift!
```

#### Binding and fire data
```swift
let dynamicString = Dynamic("Hello, World!")
dynamicString.bindAndFire { value in
    print("Value: \(value)")
    // Output: Value: Hello, World!
}
```

#### Changing the value
```swift
dynamicString.value = "Hello, Swift!"
// Output: Value: Hello, Swift!
```

### Dynamic Observer
#### Adding values
```swift
let dynamicInt = Dynamic(0)
let observer = DynamicObserver<Int>()
dynamicInt.observer = observer

dynamicInt.value = 1
dynamicInt.value = 2

print(observer.values) // Output: [1, 2]
```

## License
DynamicKit is licensed under the MIT license. See the LICENSE file for more details.
