//
//  ErrorMessage.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 28/02/2017.
//  Copyright © 2017 Joao Nunes. All rights reserved.
//

import Foundation

public struct ErrorMessage: Codable, Sendable {
	
	public var error: String?
	public var description: String?
	
	enum CodingKeys: String, CodingKey {
		case error		 = "error"
		case description = "error_description"
	}
}
