//
//  RemoteStartDriveCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 10/11/2016.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct RemoteStartDriveCommandOptions: Encodable, Sendable {

	public var password: String?
    public init(password: String) {
		self.password = password
	}
	
	enum CodingKeys: String, CodingKey {
		case password
	}
}
