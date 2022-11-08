//
//  UserDetaultWrapper.swift
//  MovieSwift
//
//  Created by Clyde Lartey on 25/10/2022.
//  Copyright © 2022 Clyde Lartey. All rights reserved.
//
import Foundation

@propertyWrapper
public struct UserDefault<T> {
    let key: String
    let defaultValue: T
    
    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
