//
//  User.swift
//  TeslaSwift
//
//  Created by Stefan Sturm on 16.11.22.
//  Copyright © 2022 Joao Nunes. All rights reserved.
//

import Foundation

public struct User: Codable, Sendable {
    public var email: String?
    public var fullName: String?
    public var profileImageUrl: String?

    enum CodingKeys: String, CodingKey {
        case email              = "email"
        case fullName           = "full_name"
        case profileImageUrl    = "profile_image_url"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        email = try? container.decode(String.self, forKey: .email)
        fullName = try? container.decode(String.self, forKey: .fullName)
        profileImageUrl = try? container.decode(String.self, forKey: .profileImageUrl)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(profileImageUrl, forKey: .profileImageUrl)
    }
}
