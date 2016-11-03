//
//  SKStyleSourceFlags.swift
//  SKStyleKit
//
//  Created by Мотылёв Михаил on 02/11/2016.
//  Copyright © 2016 mmotylev. All rights reserved.
//

import Foundation

// UIView bit flags
let viewCommonFlag = 1 << 0
let viewBorderFlag = 1 << 1
let viewColorFlag  = 1 << 2
let viewShadowFlag = 1 << 3
let viewAllFlags = viewCommonFlag | viewBorderFlag | viewColorFlag | viewShadowFlag

// Label bit flags
let labelCommonFlag = 1 << 0
let labelAdvancedFlag = 1 << 1

class SKStyleSourceFlags {
    
    // MARK: - UIView
    let viewFlags: Int
    //let labelFlags: Int
    
    // MARK: - Init
    init(from style: SKStyle) {

        viewFlags = SKStyleSourceFlags.getViewFlags(from: style)
    }
    
    // MARK: - Getting flags
    private class func getViewFlags(from style: SKStyle) -> Int {
        
        var result = 0
        
        if style.checkIfContainsViewCommonStyle() {
            result = result | viewCommonFlag
        }
        
        if style.checkIfContainsViewBorderStyle() {
            result = result | viewBorderFlag
        }
        
        if style.checkIfContainsViewColorStyle() {
            result = result | viewColorFlag
        }
        
        if style.checkIfContainsViewShadowStyle() {
            result = result | viewShadowFlag
        }
        
        return result
    }
    
    
}
