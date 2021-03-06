//
//    Copyright (c) 2016 Mikhail Motylev https://twitter.com/mikhail_motylev
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy of
//    this software and associated documentation files (the "Software"), to deal in
//    the Software without restriction, including without limitation the rights to
//    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//    the Software, and to permit persons to whom the Software is furnished to do so,
//    subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

public extension SKStyle {
    
    // MARK: - UIView
    public func apply(view: UIView?) {

        guard flags & viewAllFlags != 0 else { return }

        // Common
        if flags & viewCommonFlag != 0 {
            
            if let alpha = alpha {
                view?.alpha = alpha
            }
            
            if let cornerRadius = cornerRadius {
                view?.layer.cornerRadius = cornerRadius
            }
        }
        
        // Border
        if flags & viewBorderFlag != 0 {
            
            if let borderWidth = borderWidth {
                view?.layer.borderWidth = borderWidth
            }
            
            if let borderColor = borderColor {
                view?.layer.borderColor = borderColor.cgColor
            }
        }

        // Colors
        if flags & viewColorFlag != 0 {
            
            if let backgroundColor = backgroundColor {
                view?.backgroundColor = backgroundColor
            }
            
            if let tintColor = tintColor {
                view?.tintColor = tintColor
            }
        }
        
        // Shadow
        if flags & viewShadowFlag != 0 {
            
            if let shadowRadius = shadowRadius {
                view?.layer.shadowRadius = shadowRadius
            }
            
            if let shadowOffset = shadowOffset {
                view?.layer.shadowOffset = shadowOffset
            }
            
            if let shadowColor = shadowColor {
                view?.layer.shadowColor = shadowColor.cgColor
            }
            
            if let shadowOpacity = shadowOpacity {
                view?.layer.shadowOpacity = Float(shadowOpacity)
            }
        }
    }
    
    // MARK: - Check Style
    func checkIfContainsViewCommonStyle() -> Bool {
        return alpha != nil || cornerRadius != nil
    }
    
    func checkIfContainsViewBorderStyle() -> Bool {
        return borderWidth != nil || borderColor != nil
    }
    
    func checkIfContainsViewColorStyle() -> Bool {
        return backgroundColor != nil || tintColor != nil
    }
    
    func checkIfContainsViewShadowStyle() -> Bool {
        return shadowRadius != nil || shadowOffset != nil || shadowColor != nil || shadowOpacity != nil
    }
}
