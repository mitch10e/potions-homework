//
//  Warehouse.swift
//  Warehouse
//
//  Created by Mitchell Tenney on 8/20/19.
//  Copyright © 2019 Mitchell Tenney. All rights reserved.
//

import Foundation

class Warehouse {
    
    func find(x: Int, y: Int) -> String {
        var result: Int = -1
        if x == y {
            result = self.findAxis(x: x, y: y)
        } else {
            guard x < 200, y < 200 else {
                return "Cannot compute higher than ~40000 calls on the recursive call stack, as there are memory issues with this language."
            }
            result = self.find(x: x, y: y, currentX: 1, currentY: 1, value: 1)
        }
        return "\(result)"
    }
    
    private func findAxis(x: Int, y: Int) -> Int {
        guard x == y else { return -1 }
        return x * y + (x - 1) * (y - 1)
    }
    
    private func find(x: Int, y: Int, currentX: Int, currentY: Int, value: Int) -> Int {
        if currentX == x, currentY == y {
            return value
        }
        
        if currentX < x {
            let nextX = currentX + 1
            let nextValue = value + nextX
            return find(x: x, y: y, currentX: nextX, currentY: currentY, value: nextValue)
        }
        
        if currentY < y {
            let nextY = currentY + 1
            let nextValue = value + nextY + currentX - 2
            return find(x: x, y: y, currentX: currentX, currentY: nextY, value: nextValue)
        }
        
        return -1
    }
    
}
