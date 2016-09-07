//: Playground - noun: a place where people can play

import UIKit

// Property Observer
// didSet和willSet不会在初始化阶段调用的
class LightBulb{
    static let maxCurrent = 30
    var current = 0 {
        willSet{
            print("Current value changed. The change is \(abs(current-newValue))")
        }
        didSet{
            if current == LightBulb.maxCurrent {
                print("Pay attention, the current value get to the maximum point.")
            }else if current > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                current = oldValue
            }
            print("the current is \(current)")
            
        }
    }
}

let bulb = LightBulb()
bulb.current = 20
bulb.current = 30
bulb.current = 40
bulb.current = 30

enum Theme {
    case DayMode
    case NightMode
}
class UI{
    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode{
        didSet{
            self.changeTheme(themeMode)
        }
    }
    
    init(themeMode: Theme){
        self.themeMode = themeMode
        self.changeTheme(themeMode)
    }
    func changeTheme(themeMode: Theme){
        switch themeMode {
        case .DayMode:
            fontColor = UIColor.blackColor()
            backgroundColor = UIColor.whiteColor()
        case .NightMode:
            fontColor = UIColor.whiteColor()
            backgroundColor = UIColor.blackColor()
            
        }
    }
}
let ui = UI(themeMode: .DayMode)
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.fontColor
ui.backgroundColor

