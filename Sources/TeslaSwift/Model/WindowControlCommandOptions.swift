//
//  WindowControlCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 19/10/2019.
//  Copyright © 2019 Joao Nunes. All rights reserved.
//

import Foundation
import CoreLocation

public enum WindowState: String, Codable, Sendable {
    case close
    case vent
}

public struct WindowControlCommandOptions: Encodable, Sendable {
    
    public var latitude: CLLocationDegrees = 0
    public var longitude: CLLocationDegrees = 0
    public var command: WindowState
    
    public init(command: WindowState) {
        self.command = command
    }
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case command = "command"
    }
}
