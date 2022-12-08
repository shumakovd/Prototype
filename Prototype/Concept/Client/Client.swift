//
//  Client.swift
//  Prototype
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

/// The client code.
class Client {
    // ...
    static func someClientCode() {
        let original = SubClass(intValue: 2, stringValue: "Value2")

        guard let copy = original.copy() as? SubClass else {
            print("Error")
            return
        }

        /// See implementation of `Equatable` protocol for more details.        
        if copy == original {
            print("The original object is equal to the copied object!")
        }
        
    }
    // ...
}
