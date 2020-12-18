//
//  OpenIDAuthority.swift
//  Sonar
//
//  Created by Sasha Weiss on 12/17/20.
//

import Foundation

protocol OpenIDAuthority {
    static var issuer: URL { get }
    static var clientId: String { get }
    static var redirectUri: URL { get }
}

struct MSAOpenIDAuthority {}

extension MSAOpenIDAuthority: OpenIDAuthority {
    static let clientId: String = "97b5900d-bdbe-41bf-8afb-39fdcb0993ee"
    static let redirectUri: URL = URL(string: "msauth.com.natasha-codes.sonar://auth/")!
    static let issuer: URL = URL(string: "https://login.microsoftonline.com/consumers/v2.0")!
}
