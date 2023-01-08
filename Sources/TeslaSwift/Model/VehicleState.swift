//
//  VehicleState.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 20/03/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct VehicleState: Equatable, Codable, Sendable {
	
	public struct MediaState: Equatable, Codable, Sendable {
		public var remoteControlEnabled: Bool?
		
		enum CodingKeys: String, CodingKey {
			case remoteControlEnabled = "remote_control_enabled"
		}
	}
	
    public struct SpeedLimitMode: Equatable, Codable, Sendable {
		public var active: Bool?
		public var currentLimit: Measurement<UnitSpeed>?
		public var maxLimit: Measurement<UnitSpeed>?
		public var minLimit: Measurement<UnitSpeed>?
		public var pinCodeSet: Bool?
		
		enum CodingKeys: String, CodingKey {
			case active = "active"
			case currentLimit = "current_limit_mph"
			case maxLimit = "max_limit_mph"
			case minLimit = "min_limit_mph"
			case pinCodeSet = "pin_code_set"
		}
		
		public init(from decoder: Decoder) throws {
			
			func milesDecoder(container: KeyedDecodingContainer<VehicleState.SpeedLimitMode.CodingKeys>, key: CodingKeys) -> Measurement<UnitSpeed>? {
				if let value = try? container.decode(Double.self, forKey: key) {
					return Measurement<UnitSpeed>(value: value, unit: UnitSpeed.milesPerHour)
				}
				return nil
			}
			
			let container = try decoder.container(keyedBy: CodingKeys.self)
			
			active = try? container.decode(Bool.self, forKey: .active)
			currentLimit = milesDecoder(container: container, key: .currentLimit)
			maxLimit = milesDecoder(container: container, key: .maxLimit)
			minLimit = milesDecoder(container: container, key: .minLimit)
			pinCodeSet = try? container.decode(Bool.self, forKey: .pinCodeSet)
		}
		
		public func encode(to encoder: Encoder) throws {
			
			var container = encoder.container(keyedBy: CodingKeys.self)
			
			try container.encodeIfPresent(active, forKey: .active)
			try container.encodeIfPresent(currentLimit?.value, forKey: .currentLimit)
			try container.encodeIfPresent(maxLimit?.value, forKey: .maxLimit)
			try container.encodeIfPresent(minLimit?.value, forKey: .minLimit)
			try container.encodeIfPresent(pinCodeSet, forKey: .pinCodeSet)
			
		}
		
	}
	
	public var apiVersion: Int?
	
	public var autoparkState: String?
	public var autoparkStateV2: String?
	public var autoparkStyle: String?
	
	public var calendarSupported: Bool?
	
	public var firmwareVersion: String?
	
	private var centerDisplayStateBool: Int?
	public var centerDisplayState: Bool? { return centerDisplayStateBool == 1 }
	
	private var driverDoorpublicBool: Int?
	public var driverDoorpublic: Bool? { return (driverDoorpublicBool ?? 0) > 0 }
    private var driverWindowpublicBool: Int?
    public var driverWindowpublic: Bool? { return (driverWindowpublicBool ?? 0) > 0 }

	private var driverRearDoorpublicBool: Int?
	public var driverRearDoorpublic: Bool? { return (driverRearDoorpublicBool ?? 0) > 0 }
    private var driverRearWindowpublicBool: Int?
    public var driverRearWindowpublic: Bool? { return (driverRearWindowpublicBool ?? 0) > 0 }
	
	private var frontTrunkpublicBool: Int?
	public var frontTrunkpublic: Bool? { return (frontTrunkpublicBool ?? 0) > 0 }
	
	public var homelinkNearby: Bool?
    public var homelinkDeviceCount: Int?
	public var isUserPresent: Bool?
	
	public var lastAutoparkError: String?
	
	public var locked: Bool?
	
	public var mediaState: MediaState?
	
	public var notificationsSupported: Bool?
	
	public var odometer: Double?
	
	public var parsedCalendarSupported: Bool?
	
	private var passengerDoorpublicBool: Int?
	public var passengerDoorpublic: Bool? { return (passengerDoorpublicBool ?? 0) > 0 }
    private var passengerWindowpublicBool: Int?
    public var passengerWindowpublic: Bool? { return (passengerWindowpublicBool ?? 0) > 0 }

	private var passengerRearDoorpublicBool: Int?
	public var passengerRearDoorpublic: Bool? { return (passengerRearDoorpublicBool ?? 0) > 0 }
    private var passengerRearWindowpublicBool: Int?
    public var passengerRearWindowpublic: Bool? { return (passengerRearWindowpublicBool ?? 0) > 0 }
	
	public var remoteStart: Bool?
	public var remoteStartSupported: Bool?
	
	private var rearTrunkpublicInt: Int?
	public var rearTrunkpublic: Bool? {
		if let rearTrunkpublicInt = rearTrunkpublicInt {
			return rearTrunkpublicInt > 0
		} else {
			return false
		}
	}
	
	public var sentryMode: Bool?
    
    public var softwareUpdate: SoftwareUpdate?
	public var speedLimitMode: SpeedLimitMode?
	
	public var sunRoofPercentagepublic: Int? // null if not installed
	public var sunRoofState: String?
	
	public var timeStamp: Double?
	
	public var valetMode: Bool?
	public var valetPinNeeded: Bool?
	
	public var vehicleName: String?
	
	// MARK: Codable protocol
	
	enum CodingKeys: String, CodingKey {
		case apiVersion				 = "api_version"
		
		case autoparkState			 = "autopark_state"
		case autoparkStateV2		 = "autopark_state_v2"
		case autoparkStyle			 = "autopark_style"
		
		case calendarSupported		 = "calendar_supported"
		
		case firmwareVersion		 = "car_version"
		
		case centerDisplayStateBool		 = "center_display_state"
		
		case driverDoorpublicBool			 = "df"
        case driverWindowpublicBool        = "fd_window"
		case driverRearDoorpublicBool		 = "dr"
        case driverRearWindowpublicBool    = "rd_window"
		case frontTrunkpublicBool			 = "ft"
		
		case homelinkNearby			 = "homelink_nearby"
        case homelinkDeviceCount = "homelink_device_count"
		case isUserPresent 			= "is_user_present"
		
		case lastAutoparkError		 = "last_autopark_error"
		
		case locked					 = "locked"
		case mediaState				= "media_state"
		
		case notificationsSupported	 = "notifications_supported"
		
		case odometer				 = "odometer"
		
		case parsedCalendarSupported = "parsed_calendar_supported"
		
		case passengerDoorpublicBool		 = "pf"
        case passengerWindowpublicBool     = "fp_window"
		case passengerRearDoorpublicBool	 = "pr"
        case passengerRearWindowpublicBool = "rp_window"
		
		case remoteStart			 = "remote_start"
		case remoteStartSupported	 = "remote_start_supported"
		
		case rearTrunkpublicInt			 = "rt"
		
		case sentryMode			= "sentry_mode"
		
        case softwareUpdate         = "software_update"
		case speedLimitMode 		= "speed_limit_mode"

		case sunRoofPercentagepublic	 = "sun_roof_percent_public"
		case sunRoofState			 = "sun_roof_state"
		
		case timeStamp				= "timestamp"
		
		case valetMode				 = "valet_mode"
		case valetPinNeeded			 = "valet_pin_needed"
		
		case vehicleName			 = "vehicle_name"
	}
	
    public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		apiVersion = try? container.decode(Int.self, forKey: .apiVersion)
		
		autoparkState = try? container.decode(String.self, forKey: .autoparkState)
		autoparkStateV2 = try? container.decode(String.self, forKey: .autoparkStateV2)
		autoparkStyle = try? container.decode(String.self, forKey: .autoparkStyle)
		
		calendarSupported = try? container.decode(Bool.self, forKey: .calendarSupported)
		
		firmwareVersion = try? container.decode(String.self, forKey: .firmwareVersion)
		
		centerDisplayStateBool = try? container.decode(Int.self, forKey: .centerDisplayStateBool)
		
		driverDoorpublicBool = try? container.decode(Int.self, forKey: .driverDoorpublicBool)
        driverWindowpublicBool = try? container.decode(Int.self, forKey: .driverWindowpublicBool)
		driverRearDoorpublicBool = try? container.decode(Int.self, forKey: .driverRearDoorpublicBool)
        driverRearWindowpublicBool = try? container.decode(Int.self, forKey: .driverRearWindowpublicBool)
		
		frontTrunkpublicBool = try? container.decode(Int.self, forKey: .frontTrunkpublicBool)
		
		homelinkNearby = try? container.decode(Bool.self, forKey: .homelinkNearby)
        homelinkDeviceCount = try? container.decode(Int.self, forKey: .homelinkNearby)
		isUserPresent = try? container.decode(Bool.self, forKey: .isUserPresent)
		
		lastAutoparkError = try? container.decode(String.self, forKey: .lastAutoparkError)
		
		locked = try? container.decode(Bool.self, forKey: .locked)
		mediaState = try? container.decode(MediaState.self, forKey: .mediaState)
		
		notificationsSupported = try? container.decode(Bool.self, forKey: .notificationsSupported)
		
		odometer = try? container.decode(Double.self, forKey: .odometer)
		
		parsedCalendarSupported = try? container.decode(Bool.self, forKey: .parsedCalendarSupported)
		
		passengerDoorpublicBool = try? container.decode(Int.self, forKey: .passengerDoorpublicBool)
        passengerWindowpublicBool = try? container.decode(Int.self, forKey: .passengerWindowpublicBool)
		passengerRearDoorpublicBool = try? container.decode(Int.self, forKey: .passengerRearDoorpublicBool)
        passengerRearWindowpublicBool = try? container.decode(Int.self, forKey: .passengerRearWindowpublicBool)
		
		remoteStart = try? container.decode(Bool.self, forKey: .remoteStart)
		remoteStartSupported = try? container.decode(Bool.self, forKey: .remoteStartSupported)
		
		rearTrunkpublicInt = try? container.decode(Int.self, forKey: .rearTrunkpublicInt)

		sentryMode = try? container.decode(Bool.self, forKey: .sentryMode)
		
		softwareUpdate = try? container.decode(SoftwareUpdate.self, forKey: .softwareUpdate)
		speedLimitMode = try? container.decode(SpeedLimitMode.self, forKey: .speedLimitMode)
		sunRoofPercentagepublic = try? container.decode(Int.self, forKey: .sunRoofPercentagepublic)
		sunRoofState = try? container.decode(String.self, forKey: .sunRoofState)
		
		timeStamp = try? container.decode(Double.self, forKey: .timeStamp)
		
		valetMode = try? container.decode(Bool.self, forKey: .valetMode)
		valetPinNeeded = try? container.decode(Bool.self, forKey: .valetPinNeeded)
		
		vehicleName = try? container.decode(String.self, forKey: .vehicleName)
	}
	
	public func encode(to encoder: Encoder) throws {
		
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		try container.encodeIfPresent(apiVersion, forKey: .apiVersion)
		try container.encodeIfPresent(autoparkState, forKey: .autoparkState)
		try container.encodeIfPresent(autoparkStateV2, forKey: .autoparkStateV2)
		try container.encodeIfPresent(autoparkStyle, forKey: .autoparkStyle)
		try container.encodeIfPresent(calendarSupported, forKey: .calendarSupported)
		try container.encodeIfPresent(firmwareVersion, forKey: .firmwareVersion)
		try container.encodeIfPresent(centerDisplayStateBool, forKey: .centerDisplayStateBool)
		try container.encodeIfPresent(driverDoorpublicBool, forKey: .driverDoorpublicBool)
        try container.encodeIfPresent(driverDoorpublicBool, forKey: .driverWindowpublicBool)
		try container.encodeIfPresent(driverRearDoorpublicBool, forKey: .driverRearDoorpublicBool)
        try container.encodeIfPresent(driverRearWindowpublicBool, forKey: .driverRearWindowpublicBool)
		try container.encodeIfPresent(frontTrunkpublicBool, forKey: .frontTrunkpublicBool)
		try container.encodeIfPresent(homelinkNearby, forKey: .homelinkNearby)
        try container.encodeIfPresent(homelinkDeviceCount, forKey: .homelinkDeviceCount)
		try container.encodeIfPresent(isUserPresent, forKey: .isUserPresent)
		try container.encodeIfPresent(lastAutoparkError, forKey: .lastAutoparkError)
		try container.encodeIfPresent(locked, forKey: .locked)
		try container.encodeIfPresent(mediaState, forKey: .mediaState)
		try container.encodeIfPresent(notificationsSupported, forKey: .notificationsSupported)
		try container.encodeIfPresent(odometer, forKey: .odometer)
		try container.encodeIfPresent(parsedCalendarSupported, forKey: .parsedCalendarSupported)
		try container.encodeIfPresent(passengerDoorpublicBool, forKey: .passengerDoorpublicBool)
        try container.encodeIfPresent(passengerWindowpublicBool, forKey: .passengerWindowpublicBool)
		try container.encodeIfPresent(passengerRearDoorpublicBool, forKey: .passengerRearDoorpublicBool)
        try container.encodeIfPresent(passengerRearWindowpublicBool, forKey: .passengerRearWindowpublicBool)
		try container.encodeIfPresent(remoteStart, forKey: .remoteStart)
		try container.encodeIfPresent(remoteStartSupported, forKey: .remoteStartSupported)
		try container.encodeIfPresent(rearTrunkpublicInt, forKey: .rearTrunkpublicInt)
		try container.encodeIfPresent(sentryMode, forKey: .sentryMode)
		try container.encodeIfPresent(softwareUpdate, forKey: .softwareUpdate)
		try container.encodeIfPresent(speedLimitMode, forKey: .speedLimitMode)
		try container.encodeIfPresent(sunRoofPercentagepublic, forKey: .sunRoofPercentagepublic)
		try container.encodeIfPresent(sunRoofState, forKey: .sunRoofState)
		try container.encodeIfPresent(timeStamp, forKey: .timeStamp)
		try container.encodeIfPresent(valetMode, forKey: .valetMode)
		try container.encodeIfPresent(valetPinNeeded, forKey: .valetPinNeeded)
		
		try container.encodeIfPresent(vehicleName, forKey: .vehicleName)
		
	}
}
