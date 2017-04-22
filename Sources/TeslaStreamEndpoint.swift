//
//  TeslaStreamEndpoint.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 22/04/2017.
//  Copyright © 2017 Joao Nunes. All rights reserved.
//

import Foundation

enum StreamParameters:String {
	
	case speed
	case odometer
	case soc
	case elevation
	case estimatedHeading = "est_heading"
	case estimatedLatitude = "est_lat"
	case estimatedLongitude = "est_lng"
	case power
	case shiftState = "shift_state"
	case range
	case estimatedRange = "est_range"
	case heading
	
	static var all: [StreamParameters] = [.speed, .odometer, .soc, .elevation, .estimatedHeading, .estimatedLatitude, .estimatedLongitude, .power, .shiftState, .range, .estimatedRange, .heading]
}

enum StreamEndpoint {
	
	case stream(vehicleId: String, values: [StreamParameters])
	
}

extension StreamEndpoint {
	
	var path: String {
		switch self {
		case let .stream(vehicleId, values):
			let allValues = values.map({ $0.rawValue }).joined(separator: ",")
			return "/stream/\(vehicleId)/?values=\(allValues)"
		}
	}
	
	func baseURL(_ useMockServer: Bool) -> String {
		if useMockServer {
			return "https://private-623898-modelsapi.apiary-mock.com"
		} else {
			return "wss://streaming.vn.teslamotors.com"
		}
	}
}
