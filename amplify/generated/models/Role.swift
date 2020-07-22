// swiftlint:disable all
import Amplify
import Foundation

public enum Role: String, EnumPersistable {
  case tester = "TESTER"
  case admin = "ADMIN"
  case viewer = "VIEWER"
  case editor = "EDITOR"
}