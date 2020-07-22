// swiftlint:disable all
import Amplify
import Foundation

public struct Version: Model {
  public let id: String
  public var fileID: String
  public var name: String
  public var ownerUser: String
  public var file: S3ObjectFile?
  public var size: Int?
  public var preview: String?
  public var version: Int
  public var archived: Bool?
  public var solution: Solution
  public var members: List<UserVersion>?
  
  public init(id: String = UUID().uuidString,
      fileID: String,
      name: String,
      ownerUser: String,
      file: S3ObjectFile? = nil,
      size: Int? = nil,
      preview: String? = nil,
      version: Int,
      archived: Bool? = nil,
      solution: Solution,
      members: List<UserVersion> = []) {
      self.id = id
      self.fileID = fileID
      self.name = name
      self.ownerUser = ownerUser
      self.file = file
      self.size = size
      self.preview = preview
      self.version = version
      self.archived = archived
      self.solution = solution
      self.members = members
  }
}