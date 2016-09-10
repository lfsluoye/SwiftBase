//: Playground - noun: a place where people can play

import UIKit

// Lazy Property
class ClosedRange{
    let start: Int
    let end: Int
    
    var width: Int{
        return end - start + 1
    }
   lazy var sum: Int = {
    print("start computing sum value")
        var res = 0
        for i in self.start...self.end{
            res += i
        }
        return res
    }()
    init?(start: Int, end: Int){
        if start > end {
            return nil
        }
        self.start = start
        self.end = end
    }
}

if let range = ClosedRange(start: 0, end: 10_000){
    range.width
    range.sum
    range.sum
    
}

// 延迟属性使用的情况非常多

//Location
class Location{
    let latitude: Double
    let longitude: Double
    lazy var address: String? = {
        //执行经纬度解析
        return nil
    }()
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
}

//Book
class Book{
    let name: String
    lazy var vontent: String? = {
        //从本地读取书的内容
        return nil
    }()
    
    init(name: String){
        self.name = name
    }
}
//web
class Web{
    let url: String
    lazy var html: String? = {
        //从网络读取url对应的html
        return nil
    }()
    init(url: String){
        self.url = url
    }
}