// swiftlint:disable all
import Amplify
import Foundation

public struct UserVersion: Model {
  public let id: String
  public var user: User?
  public var role: Role?
  public var versionRecord: Version?
  
  public init(id: String = UUID().uuidString,
      user: User? = nil,
      role: Role? = nil,
      versionRecord: Version? = nil) {
      self.id = id
      self.user = user
      self.role = role
      self.versionRecord = versionRecord
  }
}