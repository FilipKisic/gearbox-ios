//
//  AuthenticationRepository.swift
//  Gearbox
//
//  Created by Filip Kisić on 04.08.2024..
//

import Foundation

protocol AuthenticationRepository {
  func signIn(email: String, password: String) async -> Result<User, AuthError>
  func signUp(email: String, username: String, password: String, confirmPassword: String) async -> Result<User, AuthError>
}
