//
//  File.swift
//  
//
//  Created by Filip Kisić on 01.08.2024..
//

import Foundation

public protocol AuthenticationDatasource {
  func signIn(request: SignInRequest) async throws -> AuthenticationResponse
  func signUp(request: SignUpRequest) async throws -> AuthenticationResponse
}

public enum AuthenticationException: Error {
  case invalidRequest(_ message: String)
  case userNotFound(_ message: String)
  case serverError(_ message: String)
  case userAlreadyExists(_ message: String)
  case expiredToken(_ message: String)
}
