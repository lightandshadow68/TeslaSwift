//
//  ChargeState.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 14/03/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct ChargeState: Codable, Equatable, Sendable {
	public enum ChargingState: String, Codable, Sendable {
		case complete = "Complete"
		case charging = "Charging"
		case disconnected = "Disconnected"
		case stopped = "Stopped"
	}
    
    public enum ScheduledChargingTimes: String, Equatable, Codable, Sendable {
        case allWeek = "all_week"
        case weekdays
    }
	
	public var batteryHeaterOn: Bool?
	/**
	Percentage of the battery
	*/
	public var batteryLevel: Int?
	/**
	Rated Miles
	*/
	public var ratedBatteryRange: Distance?
	public var chargeCurrentRequest: Int?
	public var chargeCurrentRequestMax: Int?
	public var chargeEnableRequest: Bool?
	public var chargeEnergyAdded: Double?
	
	public var chargeLimitSOC: Int?
	public var chargeLimitSOCMax: Int?
	public var chargeLimitSOCMin: Int?
	public var chargeLimitSOCStandard: Int?

	public var chargeDistanceAddedIdeal: Distance?
	public var chargeDistanceAddedRated: Distance?
	
	/**
	Vehicle charging port is public?
	*/
	public var chargePortDoorpublic: Bool?
	public var chargePortLatch: String?
	public var chargePortColdWeatherMode: Bool?
	
	/**
	miles/hour while charging or 0 if not charging
	*/
	public var chargeRate: Speed?
	/**
	Charge to max rate or standard
	*/
	public var chargeToMaxRange: Bool?
	
	/**
	Current actually being drawn
	*/
	public var chargerActualCurrent: Int?
	public var chargerPhases: Int?
	/**
	Max current allowed by charger and adapter
	*/
	public var chargerPilotCurrent: Int?
	/**
	KW of charger
	*/
	public var chargerPower: Int?
	/**
	Voltage. Only has value while charging
	*/
	public var chargerVoltage: Int?
	
	/**
	Current state of the charging
	*/
	public var chargingState: ChargingState?
	
	public var connChargeCable: String?
	
	/**
	Range estimated from recent driving
	*/
	public var estimatedBatteryRange: Distance?
	
	public var euVehicle: Bool?
	
	public var fastChargerBrand: String?
	/**
	Vehicle connected to supercharger?
	*/
	public var fastChargerPresent: Bool?
	public var fastChargerType: String?
	
	/**
	Ideal Miles
	*/
	public var idealBatteryRange: Distance?
	public var managedChargingActive: Bool?
	public var managedChargingStartTime: Date?
	public var managedChargingUserCanceled: Bool?
	
	public var maxRangeChargeCounter: Int?
	
	public var notEnoughPowerToHeat: Bool?
	
	public var scheduledChargingPending: Bool?
	public var scheduledChargingStartTime: TimeInterval?
    public var scheduledDepartureTime: TimeInterval?
    public var offPeakChargingEnabled: Bool?
    public var offPeakChargingTimes: ScheduledChargingTimes?
    public var offPeakHoursEndTime: Int?
    public var preconditioningEnabled: Bool?
    public var preconditioningTimes: ScheduledChargingTimes?
	
	/**
	Only valid while charging
	*/
	public var timeToFullCharge: Double?
	public var timeStamp: Double?
	
	public var tripCharging: Bool?
	
	public var usableBatteryLevel: Int?
	public var userChargeEnableRequest: Bool?
	
	enum CodingKeys: String, CodingKey {
		case batteryHeaterOn				 = "battery_heater_on"
		case batteryLevel                 = "battery_level"
		case ratedBatteryRange           = "battery_range"
		case chargeCurrentRequest		 = "charge_current_request"
		case chargeCurrentRequestMax		 = "charge_current_request_max"
		case chargeEnableRequest			 = "charge_enable_request"
		case chargeEnergyAdded            = "charge_energy_added"
		
		case chargeLimitSOC               = "charge_limit_soc"
		case chargeLimitSOCMax            = "charge_limit_soc_max"
		case chargeLimitSOCMin            = "charge_limit_soc_min"
		case chargeLimitSOCStandard       = "charge_limit_soc_std"
		
		case chargeDistanceAddedIdeal    = "charge_miles_added_ideal"
		case chargeDistanceAddedRated    = "charge_miles_added_rated"
		
		case chargePortDoorpublic           = "charge_port_door_public"
		case chargePortLatch				 = "charge_port_latch"
		case chargePortColdWeatherMode	= "charge_port_cold_weather_mode"
		
		case chargeRate                  = "charge_rate"
		case chargeToMaxRange             = "charge_to_max_range"
		
		case chargerActualCurrent         = "charger_actual_current"
		case chargerPhases				 = "charger_phases"
		case chargerPilotCurrent          = "charger_pilot_current"
		case chargerPower                 = "charger_power"
		case chargerVoltage               = "charger_voltage"
		
		case chargingState                = "charging_state"
		
		case connChargeCable				= "conn_charge_cable"
		
		case estimatedBatteryRange      = "est_battery_range"
		
		case euVehicle					 = "eu_vehicle"
		
		case fastChargerBrand			= "fast_charger_brand"
		case fastChargerPresent           = "fast_charger_present"
		case fastChargerType				 = "fast_charger_type"
		
		case idealBatteryRange          = "ideal_battery_range"
		
		case managedChargingActive		 = "managed_charging_active"
		case managedChargingStartTime	 = "managed_charging_start_time"
		case managedChargingUserCanceled	 = "managed_charging_user_canceled"
		
		case maxRangeChargeCounter        = "max_range_charge_counter"
		
		case notEnoughPowerToHeat		 = "not_enough_power_to_heat"
		
		case scheduledChargingPending	 = "scheduled_charging_pending"
		case scheduledChargingStartTime	 = "scheduled_charging_start_time"
        case scheduledDepartureTime      = "scheduled_departure_time"
        case offPeakChargingEnabled      = "off_peak_charging_enabled"
        case offPeakChargingTimes        = "off_peak_charging_times"
        case offPeakHoursEndTime         = "off_peak_hours_end_time"
        case preconditioningEnabled      = "preconditioning_enabled"
        case preconditioningTimes        = "preconditioning_times"
		
		case timeToFullCharge             = "time_to_full_charge"
		
		case timeStamp					= "timestamp"
		
		case tripCharging				 = "trip_charging"
		
		case usableBatteryLevel			 = "usable_battery_level"
		
		case userChargeEnableRequest		 = "user_charge_enable_request"
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		batteryHeaterOn = try? container.decode(Bool.self, forKey: .batteryHeaterOn)
		
		batteryLevel = try? container.decode(Int.self, forKey: .batteryLevel)

		ratedBatteryRange = try? container.decode(Distance.self, forKey: .ratedBatteryRange)
		chargeCurrentRequest = try? container.decode(Int.self, forKey: .chargeCurrentRequest)
		chargeCurrentRequestMax = try? container.decode(Int.self, forKey: .chargeCurrentRequestMax)
		chargeEnableRequest = try? container.decode(Bool.self, forKey: .chargeEnableRequest)
		chargeEnergyAdded = try? container.decode(Double.self, forKey: .chargeEnergyAdded)
		
		chargeLimitSOC = try? container.decode(Int.self, forKey: .chargeLimitSOC)
		chargeLimitSOCMax = try? container.decode(Int.self, forKey: .chargeLimitSOCMax)
		chargeLimitSOCMin = try? container.decode(Int.self, forKey: .chargeLimitSOCMin)
		chargeLimitSOCStandard = try? container.decode(Int.self, forKey: .chargeLimitSOCStandard)
		
		chargeDistanceAddedIdeal = try? container.decode(Distance.self, forKey: .chargeDistanceAddedIdeal)
		chargeDistanceAddedRated = try? container.decode(Distance.self, forKey: .chargeDistanceAddedRated)

		chargePortDoorpublic = try? container.decode(Bool.self, forKey: .chargePortDoorpublic)
		chargePortLatch = try? container.decode(String.self, forKey: .chargePortLatch)
		chargePortColdWeatherMode = try? container.decode(Bool.self, forKey: .chargePortColdWeatherMode)

		chargeRate = try? container.decode(Speed.self, forKey: .chargeRate)

		chargeToMaxRange = try? container.decode(Bool.self, forKey: .chargeToMaxRange)

		chargerActualCurrent = try? container.decode(Int.self, forKey: .chargerActualCurrent)
		chargerPhases = try? container.decode(Int.self, forKey: .chargerPhases)

		chargerPilotCurrent = try? container.decode(Int.self, forKey: .chargerPilotCurrent)

		chargerPower = try? container.decode(Int.self, forKey: .chargerPower)
 
		chargerVoltage = try? container.decode(Int.self, forKey: .chargerVoltage)

		chargingState = try? container.decode(ChargingState.self, forKey: .chargingState)
		
		connChargeCable = try? container.decode(String.self, forKey: .connChargeCable)

		estimatedBatteryRange = try? container.decode(Distance.self, forKey: .estimatedBatteryRange)
		
		euVehicle = try? container.decode(Bool.self, forKey: .euVehicle)
		
		fastChargerBrand = try? container.decode(String.self, forKey: .fastChargerBrand)

		fastChargerPresent = try? container.decode(Bool.self, forKey: .fastChargerPresent)
		fastChargerType = try? container.decode(String.self, forKey: .fastChargerType)

		idealBatteryRange = try? container.decode(Distance.self, forKey: .idealBatteryRange)
		managedChargingActive = try? container.decode(Bool.self, forKey: .managedChargingActive)
		managedChargingStartTime = try? container.decode(Date.self, forKey: .managedChargingStartTime)
		managedChargingUserCanceled = try? container.decode(Bool.self, forKey: .managedChargingUserCanceled)
		
		maxRangeChargeCounter = try? container.decode(Int.self, forKey: .maxRangeChargeCounter)
		
		notEnoughPowerToHeat = try? container.decode(Bool.self, forKey: .notEnoughPowerToHeat)
		
		scheduledChargingPending = try? container.decode(Bool.self, forKey: .scheduledChargingPending)
		scheduledChargingStartTime = try? container.decode(TimeInterval.self, forKey: .scheduledChargingStartTime)
        scheduledDepartureTime = try? container.decode(TimeInterval.self, forKey: .scheduledDepartureTime)
        offPeakChargingEnabled = try? container.decode(Bool.self, forKey: .offPeakChargingEnabled)
        offPeakChargingTimes = try? container.decode(ScheduledChargingTimes.self, forKey: .offPeakChargingTimes)
        offPeakHoursEndTime = try? container.decode(Int.self, forKey: .offPeakHoursEndTime)
        preconditioningEnabled = try? container.decode(Bool.self, forKey: .preconditioningEnabled)
        preconditioningTimes = try? container.decode(ScheduledChargingTimes.self, forKey: .preconditioningTimes)

		timeToFullCharge = try? container.decode(Double.self, forKey: .timeToFullCharge)
		timeStamp = try? container.decode(Double.self, forKey: .timeStamp)
		
		tripCharging = try? container.decode(Bool.self, forKey: .tripCharging)
		
		usableBatteryLevel = try? container.decode(Int.self, forKey: .usableBatteryLevel)
		userChargeEnableRequest = try? container.decode(Bool.self, forKey: .userChargeEnableRequest)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encodeIfPresent(batteryHeaterOn, forKey: .batteryHeaterOn)
		
		try container.encodeIfPresent(batteryLevel, forKey: .batteryLevel)
		
		try container.encodeIfPresent(ratedBatteryRange, forKey: .ratedBatteryRange)
		
		try container.encodeIfPresent(chargeCurrentRequest, forKey: .chargeCurrentRequest)
		try container.encodeIfPresent(chargeCurrentRequestMax, forKey: .chargeCurrentRequestMax)
		try container.encodeIfPresent(chargeEnableRequest, forKey: .chargeEnableRequest)
		try container.encodeIfPresent(chargeEnergyAdded, forKey: .chargeEnergyAdded)
		
		try container.encodeIfPresent(chargeLimitSOC, forKey: .chargeLimitSOC)
		try container.encodeIfPresent(chargeLimitSOCMax, forKey: .chargeLimitSOCMax)
		try container.encodeIfPresent(chargeLimitSOCMin, forKey: .chargeLimitSOCMin)
		try container.encodeIfPresent(chargeLimitSOCStandard, forKey: .chargeLimitSOCStandard)
		
		try container.encodeIfPresent(chargeDistanceAddedIdeal, forKey: .chargeDistanceAddedIdeal)
		try container.encodeIfPresent(chargeDistanceAddedRated, forKey: .chargeDistanceAddedRated)
		
		try container.encodeIfPresent(chargePortDoorpublic, forKey: .chargePortDoorpublic)
		try container.encodeIfPresent(chargePortLatch, forKey: .chargePortLatch)
		try container.encodeIfPresent(chargePortColdWeatherMode, forKey: .chargePortColdWeatherMode)

		try container.encodeIfPresent(chargeRate, forKey: .chargeRate)

		try container.encodeIfPresent(chargeToMaxRange, forKey: .chargeToMaxRange)
		
		try container.encodeIfPresent(chargerActualCurrent, forKey: .chargerActualCurrent)
		try container.encodeIfPresent(chargerPhases, forKey: .chargerPhases)

		try container.encodeIfPresent(chargerPilotCurrent, forKey: .chargerPilotCurrent)

		try container.encodeIfPresent(chargerPower, forKey: .chargerPower)

		try container.encodeIfPresent(chargerVoltage, forKey: .chargerVoltage)
		
		try container.encodeIfPresent(chargingState, forKey: .chargingState)
		
		try container.encodeIfPresent(connChargeCable, forKey: .connChargeCable)
		
		try container.encodeIfPresent(estimatedBatteryRange, forKey: .estimatedBatteryRange)
		
		try container.encodeIfPresent(euVehicle, forKey: .euVehicle)
		
		try container.encodeIfPresent(fastChargerBrand, forKey: .fastChargerBrand)

		try container.encodeIfPresent(fastChargerPresent, forKey: .fastChargerPresent)
		try container.encodeIfPresent(fastChargerType, forKey: .fastChargerType)
		
		try container.encodeIfPresent(idealBatteryRange, forKey: .idealBatteryRange)
		try container.encodeIfPresent(managedChargingActive, forKey: .managedChargingActive)
		try container.encodeIfPresent(managedChargingStartTime, forKey: .managedChargingStartTime)
		try container.encodeIfPresent(managedChargingUserCanceled, forKey: .managedChargingUserCanceled)
		
		try container.encodeIfPresent(maxRangeChargeCounter, forKey: .maxRangeChargeCounter)
		
		try container.encodeIfPresent(notEnoughPowerToHeat, forKey: .notEnoughPowerToHeat)
		
		try container.encodeIfPresent(scheduledChargingPending, forKey: .scheduledChargingPending)
		try container.encodeIfPresent(scheduledChargingStartTime, forKey: .scheduledChargingStartTime)
        try container.encodeIfPresent(scheduledDepartureTime, forKey: .scheduledDepartureTime)
        try container.encodeIfPresent(offPeakChargingEnabled, forKey: .offPeakChargingEnabled)
        try container.encodeIfPresent(offPeakChargingTimes, forKey: .offPeakChargingTimes)
        try container.encodeIfPresent(offPeakHoursEndTime, forKey: .offPeakHoursEndTime)
        try container.encodeIfPresent(preconditioningEnabled, forKey: .preconditioningEnabled)
        try container.encodeIfPresent(preconditioningTimes, forKey: .preconditioningTimes)
		
		try container.encodeIfPresent(timeToFullCharge, forKey: .timeToFullCharge)
		try container.encodeIfPresent(timeStamp, forKey: .timeStamp)
		
		try container.encodeIfPresent(tripCharging, forKey: .tripCharging)
		
		try container.encodeIfPresent(usableBatteryLevel, forKey: .usableBatteryLevel)
		try container.encodeIfPresent(userChargeEnableRequest, forKey: .userChargeEnableRequest)
	}
}
