require 'swagger2objc'

task default: :update

desc 'update SIRequestKit'
task :update do
  # # Permission
  # only = ['Permission']
  # base_uri = 'http://192.168.1.200:9000/api/swagger.json'
  # parser = Swagger2objc::Parser.new(base_uri, only)
  # parser.sdk_result
  # parser.model_result
  #
  # # Message
  # only = ['Message']
  # base_uri = 'http://192.168.1.200:9800/api/swagger.json'
  # parser = Swagger2objc::Parser.new(base_uri, only)
  # parser.sdk_result
  # parser.model_result
  #
  # # #Audit
  # only = ['Audit']
  # base_uri = 'http://192.168.1.200:12358/api/swagger.json'
  # parser = Swagger2objc::Parser.new(base_uri, only)
  # parser.sdk_result
  # parser.model_result
  #
  # # User
  # base_uri = 'http://192.168.1.100:19944/v2/api-docs'
  # only = nil
  # parser = Swagger2objc::Parser.new(base_uri, only)
  # parser.model_result
  # parser.sdk_result
  #
  # # Default
  # base_uri = 'http://192.168.1.100:19999/v2/api-docs'
  # # base_uri = 'http://192.168.1.247:19999/v2/api-docs'
  # only = %w[
  #   Affair
  #   AffairMember
  #   Alliance
  #   AffairMember
  #   AllianceMember
  #   Announcement
  #   AnnouncementMember
  #   Chat
  #   Constant
  #   File
  #   Fund
  #   Material
  #   Message
  #   Notice
  #   Order
  #   Personnel
  #   Role
  #   Share
  #   Task
  # ]
  # # only = %w[
  # #   Affair
  # #   AffairMember
  # #   Alliance
  # #   AffairMember
  # #   AllianceMember
  # #   Announcement
  # #   AnnouncementMember
  # #   Chat
  # #   Constant
  # #   File
  # #   Fund
  # #   Material
  # #   Message
  # #   Notice
  # #   Order
  # #   Personnel
  # #   Role
  # #   Share
  # #   Task
  # # ]
  # parser = Swagger2objc::Parser.new(base_uri, only)
  # parser.model_result
  # parser.sdk_result
  only = nil
  base_uri = 'http://superid.org:18000'
  path = '/services'
  parser = Swagger2objc::Parser.new(base_uri, path, only)

  sh 'cd Example && pod install --no-repo-update --verbose && xcodebuild -workspace ./SIRequestKit.xcworkspace -scheme SIRequestKit'
end

task :version do
  sh 'fastlane version'
  # sh "cd ../superid-ios && pod update SIRequestKit --no-repo-update --verbose"
  sh "cd ../superid-ios && pod update SIRequestKit --no-repo-update --verbose && git add . && git commit --no-verify -m 'update `SIRequestKit`'"
end
