//
//  SoftwareUpdate.swift
//  TeslaSwift
//
//  Created by Derek Johnson on 10/31/18.
//  Copyright © 2018 Derek Johnson. All rights reserved.
//

import Foundation

public struct SoftwareUpdate: Codable, Sendable {
	
    public var status: String?
    public var expectedDuration: Int?
    public var scheduledTime: Double?
    public var warningTimeRemaining: Double?
    public var downloadPercentage: Int?
    public var installPercentage: Int?
    public var version: String?
    
    enum CodingKeys: String, CodingKey {
        case status                  = "status"
        case expectedDuration        = "expected_duration_sec"
        case scheduledTime           = "scheduled_time_ms"
        case warningTimeRemaining    = "warning_time_remaining_ms"
        case downloadPercentage = "download_perc"
        case installPercentage = "install_perc"
        case version = "version"
    }
}
