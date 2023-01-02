//
//  RemoteSeatHeaterRequestOptions.swift
//  TeslaSwift
//
//  Created by Jordan Owens on 2/17/19.
//  Copyright © 2019 Jordan Owens. All rights reserved.
//

import Foundation

public struct RemoteSeatHeaterRequestOptions: Encodable, Sendable {

    public var seat: HeatedSeat
    public var level: HeatLevel

    public init(seat: HeatedSeat, level: HeatLevel) {
        self.seat = seat
        self.level = level
    }

    enum CodingKeys: String, CodingKey {
        case seat = "heater"
        case level = "level"
    }
}

public enum HeatedSeat: Int, Encodable, Sendable {
    case driver = 0
    case passenger = 1
    case rearLeft = 2
    case rearLeftBack = 3
    case rearCenter = 4
    case rearRight = 5
    case rearRightBack = 6
    case thirdRowLeft = 7
    case thirdRowRight = 8
}

public enum HeatLevel: Int, Encodable, Sendable {
	case off = 0
	case low = 1
	case mid = 2
	case high = 3
}
