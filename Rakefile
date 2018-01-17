require 'swagger2objc'

task default: :update

task :version do
  sh 'fastlane version'
  # sh "cd ../superid-ios && pod update SIRequestKit --no-repo-update --verbose"
  sh "cd ../superid-ios && pod update SILame --no-repo-update --verbose && git add . && git commit --no-verify -m 'update `SILame`'"
end
