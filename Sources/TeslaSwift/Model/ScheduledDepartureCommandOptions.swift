//
//  ScheduledDepartureCommandOptions.swift
//  TeslaSwift
//
//  Created by Philip Engberg on 07/11/2021.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

public struct ScheduledDepartureCommandOptions: Encodable, Sendable {
    
    public var enable: Bool
    public var departureTime: Int
    public var preconditioningEnabled: Bool
    public var preconditioningWeekdaysOnly: Bool
    public var offPeakChargingEnabled: Bool
    public var endOffPeakTime: Int
    public var offPeakChargingWeekdaysOnly: Bool
    
    public init(enable: Bool, departureTime: Int, preconditioningEnabled: Bool, preconditioningWeekdaysOnly: Bool, offPeakChargingEnabled: Bool, endOffPeakTime: Int, offPeakChargingWeekdaysOnly: Bool) {
        self.enable = enable
        self.departureTime = departureTime
        self.preconditioningEnabled = preconditioningEnabled
        self.preconditioningWeekdaysOnly = preconditioningWeekdaysOnly
        self.offPeakChargingEnabled = offPeakChargingEnabled
        self.endOffPeakTime = endOffPeakTime
        self.offPeakChargingWeekdaysOnly = offPeakChargingWeekdaysOnly
    }
    
    enum CodingKeys: String, CodingKey {
        case enable
        case departureTime = "departure_time"
        case preconditioningEnabled = "preconditioning_enabled"
        case preconditioningWeekdaysOnly = "preconditioning_weekdays_only"
        case offPeakChargingEnabled = "off_peak_charging_enabled"
        case endOffPeakTime = "end_off_peak_time"
        case offPeakChargingWeekdaysOnly = "off_peak_charging_weekdays_only"
    }
}
