//
//  SetSunRoofCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 10/11/2016.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public enum RoofState: String, Codable, Sendable {
    case close
    case vent
}

public struct SetSunRoofCommandOptions: Encodable, Sendable {

	public var state: RoofState
	public var percent: Int?
    public init(state: RoofState, percent: Int?) {
		self.state = state
		self.percent = percent
	}
	
}
