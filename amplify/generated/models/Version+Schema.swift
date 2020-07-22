// swiftlint:disable all
import Amplify
import Foundation

extension Version {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case fileID
    case name
    case ownerUser
    case file
    case size
    case preview
    case version
    case archived
    case solution
    case members
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let version = Version.keys
    
    model.pluralName = "Versions"
    
    model.fields(
      .id(),
      .field(version.fileID, is: .required, ofType: .string),
      .field(version.name, is: .required, ofType: .string),
      .field(version.ownerUser, is: .required, ofType: .string),
      .hasOne(version.file, is: .optional, ofType: S3ObjectFile.self, associatedWith: S3ObjectFile.keys.id),
      .field(version.size, is: .optional, ofType: .int),
      .field(version.preview, is: .optional, ofType: .string),
      .field(version.version, is: .required, ofType: .int),
      .field(version.archived, is: .optional, ofType: .bool),
      .belongsTo(version.solution, is: .required, ofType: Solution.self, targetName: "solutionID"),
      .hasMany(version.members, is: .optional, ofType: UserVersion.self, associatedWith: UserVersion.keys.versionRecord)
    )
    }
}