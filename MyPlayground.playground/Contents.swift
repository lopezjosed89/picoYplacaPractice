//: Playground - noun: a place where people can play

import UIKit

print(simpleMax(25, 30))

func simpleMax<T: Comparable>(_ x: T, _ y: T) -> T {
    if x < y {
        return y
    }
    return x
}


