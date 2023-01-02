//
//  ClimateState.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 14/03/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct ClimateState: Codable, Sendable {
    /*
     * Fan speed 0-6 or nil
     */
    public var fanStatus: Int?

    public var isAutoConditioningOn: Bool?
    public var isClimateOn: Bool?
    public var climateKeeperMode: String?

    public var batteryHeater: Bool?
    public var batteryHeaterNoPower: Bool?

    public var isFrontDefrosterOn: Bool?
    public var isRearDefrosterOn: Bool?
    public var defrostMode: Int? //2 = on, 0 = off

    /*
     * Temp directions 0 at least 583...
     */
    public var leftTemperatureDirection: Int?
    public var rightTemperatureDirection: Int?

    public var driverTemperatureSetting: Temperature?
    public var passengerTemperatureSetting: Temperature?

    public var maxAvailableTemperature: Temperature?
    public var minAvailableTemperature: Temperature?

    public var remoteHeaterControlEnabled: Bool?

    public var seatHeaterLeft: Int?
    public var seatHeaterRearCenter: Int?
    public var seatHeaterRearLeft: Int?
    public var seatHeaterRearLeftBack: Int?
    public var seatHeaterRearRight: Int?
    public var seatHeaterRearRightBack: Int?
    public var seatHeaterRight: Int?

    public var sideMirrorHeaters: Bool?
    public var steeringWheelHeater: Bool?
    public var wiperBladeHeater: Bool?

    public var insideTemperature: Temperature?
    public var outsideTemperature: Temperature?

    public var isPreconditioning: Bool?
    public var smartPreconditioning: Bool?

    public var timeStamp: Double?

    enum CodingKeys: String, CodingKey {
        case batteryHeater   = "battery_heater"
        case batteryHeaterNoPower = "battery_heater_no_power"

        case driverTemperatureSetting    = "driver_temp_setting"
        case passengerTemperatureSetting = "passenger_temp_setting"

        case fanStatus                     = "fan_status"

        case insideTemperature            = "inside_temp"

        case isAutoConditioningOn         = "is_auto_conditioning_on"
        case isClimateOn                 = "is_climate_on"
        case climateKeeperMode = "climate_keeper_mode"
        case isFrontDefrosterOn             = "is_front_defroster_on"
        case isRearDefrosterOn             = "is_rear_defroster_on"
        case defrostMode = "defrost_mode"

        case isPreconditioning        = "is_preconditioning"

        case leftTemperatureDirection     = "left_temp_direction"

        case maxAvailableTemperature     = "max_avail_temp"
        case minAvailableTemperature     = "min_avail_temp"

        case outsideTemperature            = "outside_temp"

        case remoteHeaterControlEnabled = "remote_heater_control_enabled"

        case rightTemperatureDirection     = "right_temp_direction"

        case seatHeaterLeft                 = "seat_heater_left"
        case seatHeaterRearCenter         = "seat_heater_rear_center"
        case seatHeaterRearLeft             = "seat_heater_rear_left"
        case seatHeaterRearLeftBack         = "seat_heater_rear_left_back"
        case seatHeaterRearRight             = "seat_heater_rear_right"
        case seatHeaterRearRightBack         = "seat_heater_rear_right_back"
        case seatHeaterRight                 = "seat_heater_right"

        case sideMirrorHeaters                = "side_mirror_heaters"
        case steeringWheelHeater            = "steering_wheel_heater"
        case wiperBladeHeater                = "wiper_blade_heater"

        case smartPreconditioning         = "smart_preconditioning"

        case timeStamp                    = "timestamp"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        batteryHeater = try? container.decode(Bool.self, forKey: .batteryHeater)

        batteryHeaterNoPower = try? container.decode(Bool.self, forKey: .batteryHeaterNoPower)

        driverTemperatureSetting = try? container.decode(Temperature.self, forKey: .driverTemperatureSetting)
        passengerTemperatureSetting  = try? container.decode(Temperature.self, forKey: .passengerTemperatureSetting)

        fanStatus = try? container.decode(Int.self, forKey: .fanStatus)

        insideTemperature  = try? container.decode(Temperature.self, forKey: .insideTemperature)

        isAutoConditioningOn  = try? container.decode(Bool.self, forKey: .isAutoConditioningOn)
        isClimateOn  = try? container.decode(Bool.self, forKey: .isClimateOn)
        climateKeeperMode  = try? container.decode(String.self, forKey: .climateKeeperMode)
        isFrontDefrosterOn  = try? container.decode(Bool.self, forKey: .isFrontDefrosterOn)
        isRearDefrosterOn  = try? container.decode(Bool.self, forKey: .isRearDefrosterOn)

        defrostMode = try? container.decode(Int.self, forKey: .defrostMode)

        isPreconditioning  = try? container.decode(Bool.self, forKey: .isPreconditioning)

        leftTemperatureDirection  = try? container.decode(Int.self, forKey: .leftTemperatureDirection)

        maxAvailableTemperature  = try? container.decode(Temperature.self, forKey: .maxAvailableTemperature)
        minAvailableTemperature  = try? container.decode(Temperature.self, forKey: .minAvailableTemperature)

        outsideTemperature  = try? container.decode(Temperature.self, forKey: .outsideTemperature)

        remoteHeaterControlEnabled = try? container.decode(Bool.self, forKey: .remoteHeaterControlEnabled)

        rightTemperatureDirection  = try? container.decode(Int.self, forKey: .rightTemperatureDirection)

        seatHeaterLeft  = try? container.decode(Int.self, forKey: .seatHeaterLeft)
        seatHeaterRearCenter  = try? container.decode(Int.self, forKey: .seatHeaterRearCenter)
        seatHeaterRearLeft  = try? container.decode(Int.self, forKey: .seatHeaterRearLeft)
        seatHeaterRearLeftBack  = try? container.decode(Int.self, forKey: .seatHeaterRearLeftBack)
        seatHeaterRearRight  = try? container.decode(Int.self, forKey: .seatHeaterRearRight)
        seatHeaterRearRightBack  = try? container.decode(Int.self, forKey: .seatHeaterRearRightBack)
        seatHeaterRight  = try? container.decode(Int.self, forKey: .seatHeaterRight)

        sideMirrorHeaters  = try? container.decode(Bool.self, forKey: .sideMirrorHeaters)
        steeringWheelHeater  = try? container.decode(Bool.self, forKey: .steeringWheelHeater)
        wiperBladeHeater  = try? container.decode(Bool.self, forKey: .wiperBladeHeater)

        smartPreconditioning  = try? container.decode(Bool.self, forKey: .smartPreconditioning)

        timeStamp  = try? container.decode(Double.self, forKey: .timeStamp)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(batteryHeater, forKey: .batteryHeater)

        try container.encodeIfPresent(batteryHeaterNoPower, forKey: .batteryHeaterNoPower)

        try container.encodeIfPresent(driverTemperatureSetting, forKey: .driverTemperatureSetting)

        try container.encodeIfPresent(fanStatus, forKey: .fanStatus)

        try container.encodeIfPresent(insideTemperature, forKey: .insideTemperature)

        try container.encodeIfPresent(isAutoConditioningOn, forKey: .isAutoConditioningOn)
        try container.encodeIfPresent(isClimateOn, forKey: .isClimateOn)
        try container.encodeIfPresent(climateKeeperMode, forKey: .climateKeeperMode)
        try container.encodeIfPresent(isFrontDefrosterOn, forKey: .isFrontDefrosterOn)
        try container.encodeIfPresent(isRearDefrosterOn, forKey: .isRearDefrosterOn)
        try container.encodeIfPresent(defrostMode, forKey: .defrostMode)

        try container.encodeIfPresent(isPreconditioning, forKey: .isPreconditioning)
        try container.encodeIfPresent(leftTemperatureDirection, forKey: .leftTemperatureDirection)
        try container.encodeIfPresent(maxAvailableTemperature, forKey: .maxAvailableTemperature)
        try container.encodeIfPresent(minAvailableTemperature, forKey: .minAvailableTemperature)

        try container.encodeIfPresent(outsideTemperature, forKey: .outsideTemperature)

        try container.encodeIfPresent(passengerTemperatureSetting, forKey: .passengerTemperatureSetting)

        try container.encodeIfPresent(remoteHeaterControlEnabled, forKey: .remoteHeaterControlEnabled)

        try container.encodeIfPresent(rightTemperatureDirection, forKey: .rightTemperatureDirection)

        try container.encodeIfPresent(seatHeaterLeft, forKey: .seatHeaterLeft)
        try container.encodeIfPresent(seatHeaterRearCenter, forKey: .seatHeaterRearCenter)
        try container.encodeIfPresent(seatHeaterRearLeft, forKey: .seatHeaterRearLeft)

        try container.encodeIfPresent(seatHeaterRearLeftBack, forKey: .seatHeaterRearLeftBack)
        try container.encodeIfPresent(seatHeaterRearRight, forKey: .seatHeaterRearRight)
        try container.encodeIfPresent(seatHeaterRearRightBack, forKey: .seatHeaterRearRightBack)
        try container.encodeIfPresent(seatHeaterRight, forKey: .seatHeaterRight)
        try container.encodeIfPresent(sideMirrorHeaters, forKey: .sideMirrorHeaters)
        try container.encodeIfPresent(steeringWheelHeater, forKey: .steeringWheelHeater)
        try container.encodeIfPresent(wiperBladeHeater, forKey: .wiperBladeHeater)

        try container.encodeIfPresent(smartPreconditioning, forKey: .smartPreconditioning)

        try container.encodeIfPresent(timeStamp, forKey: .timeStamp)
    }
}

public struct Temperature: Codable, Sendable {
    public var value: Measurement<UnitTemperature>

    public init(celsius: Double?) {
        let tempValue = celsius ?? 0.0
        value = Measurement<UnitTemperature>(value: tempValue, unit: .celsius)
    }
    public init(fahrenheit: Double) {
        value = Measurement<UnitTemperature>(value: fahrenheit, unit: .fahrenheit)
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let tempValue = try container.decode(Double?.self) {
            value = Measurement<UnitTemperature>(value: tempValue, unit: .celsius)
        } else {
            value = Measurement<UnitTemperature>(value: 0, unit: .celsius)
        }
    }

    public func encode(to encoder: Encoder) throws {

        var container = encoder.singleValueContainer()
        try container.encode(value.converted(to: .celsius).value)

    }

    public var celsius: Double { return value.converted(to: .celsius).value }
    public var fahrenheit: Double { return value.converted(to: .fahrenheit).value }
}

extension Measurement: Sendable {}

extension UnitTemperature: @unchecked Sendable {}
