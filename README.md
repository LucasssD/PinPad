# PinPad

[![CI Status](https://img.shields.io/travis/Łukasz%20Duda/PinPad.svg?style=flat)](https://travis-ci.org/Łukasz%20Duda/PinPad)
[![Version](https://img.shields.io/cocoapods/v/PinPad.svg?style=flat)](https://cocoapods.org/pods/PinPad)
[![License](https://img.shields.io/cocoapods/l/PinPad.svg?style=flat)](https://cocoapods.org/pods/PinPad)
[![Platform](https://img.shields.io/cocoapods/p/PinPad.svg?style=flat)](https://cocoapods.org/pods/PinPad)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Swift 5.0

iOS 11.0

## Installation

PinPad is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PinPad'
```

## Usage
Simply add UIView in interface builder and set its class to PinPadView.
In UIViewController / parent UIView finish configuration of PinPadView like:
```swift
  pinPadView.setupFromNib()
  pinPadView.delegate = self
```

You can optionally set primary color of PinPadView:
```swift
  pinPadView.primaryColor = UIColor.white
```

For even more details check example project.

## Author

Łukasz Duda, lucasss.duda@gmail.com

## License

PinPad is available under the MIT license. See the LICENSE file for more info.

## Preview:
<img src="https://raw.githubusercontent.com/LucasssD/PinPad/master/Screenshot1.png" width="400" >

