// swiftlint:disable all
import Amplify
import Foundation

extension UserVersion {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case user
    case role
    case versionRecord
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let userVersion = UserVersion.keys
    
    model.pluralName = "UserVersions"
    
    model.fields(
      .id(),
      .belongsTo(userVersion.user, is: .optional, ofType: User.self, targetName: "userID"),
      .field(userVersion.role, is: .optional, ofType: .enum(type: Role.self)),
      .belongsTo(userVersion.versionRecord, is: .optional, ofType: Version.self, targetName: "versionID")
    )
    }
}