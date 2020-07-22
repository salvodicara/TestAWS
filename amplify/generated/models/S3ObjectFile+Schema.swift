// swiftlint:disable all
import Amplify
import Foundation

extension S3ObjectFile {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case bucket
    case region
    case key
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let s3ObjectFile = S3ObjectFile.keys
    
    model.pluralName = "S3ObjectFiles"
    
    model.fields(
      .id(),
      .field(s3ObjectFile.bucket, is: .optional, ofType: .string),
      .field(s3ObjectFile.region, is: .optional, ofType: .string),
      .field(s3ObjectFile.key, is: .optional, ofType: .string)
    )
    }
}