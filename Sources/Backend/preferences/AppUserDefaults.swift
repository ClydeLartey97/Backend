//
//  UserDefaults.swift
//  MovieSwift
//
//  Created by Clyde Lartey on 25/10/2022.
//  Copyright © 2022 Clyde Lartey. All rights reserved.
//

import Foundation

public struct AppUserDefaults {
    @UserDefault("user_region", defaultValue: Locale.current.regionCode ?? "US")
    public static var region: String
        
    @UserDefault("original_title", defaultValue: false)
    public static var alwaysOriginalTitle: Bool
}
