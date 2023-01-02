//
//  GuiSettings.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 17/03/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct GuiSettings: Codable, Sendable {
	public var distanceUnits: String?
	public var temperatureUnits: String?
	public var chargeRateUnits: String?
	public var time24Hours: Bool?
	public var rangeDisplay: String?
	public var timeStamp: Double?

	enum CodingKeys: String, CodingKey {
		case distanceUnits		 = "gui_distance_units"
		case temperatureUnits	 = "gui_temperature_units"
		case chargeRateUnits		 = "gui_charge_rate_units"
		case time24Hours			 = "gui_24_hour_time"
		case rangeDisplay		 = "gui_range_display"
		case timeStamp			= "timestamp"
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		distanceUnits = try? container.decode(String.self, forKey: .distanceUnits)
		temperatureUnits = try? container.decode(String.self, forKey: .temperatureUnits)
		chargeRateUnits = try? container.decode(String.self, forKey: .chargeRateUnits)
		time24Hours = try? container.decode(Bool.self, forKey: .time24Hours)
		rangeDisplay = try? container.decode(String.self, forKey: .rangeDisplay)
		timeStamp = try? container.decode(Double.self, forKey: .timeStamp)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encodeIfPresent(distanceUnits, forKey: .distanceUnits)
		try container.encodeIfPresent(temperatureUnits, forKey: .temperatureUnits)
		try container.encodeIfPresent(chargeRateUnits, forKey: .chargeRateUnits)
		try container.encodeIfPresent(time24Hours, forKey: .time24Hours)
		try container.encodeIfPresent(rangeDisplay, forKey: .rangeDisplay)
		try container.encodeIfPresent(timeStamp, forKey: .timeStamp)
	}
}
