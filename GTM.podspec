#
# Be sure to run `pod spec lint GTM.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "GTM"
  s.version      = "0.0.1"
  s.summary      = "Google Toolbox For Mac - mirror"
  s.homepage     = "https://github.com/maxme/google-toolbox-for-mac"
  s.license      = 'Apache License Version 2.0'
  s.author       = "Google"
  s.source       = {
    :git => "https://github.com/maxme/google-toolbox-for-mac.git",
    :tag => "0.0.1"
  }
  s.source_files = 'GTMDefines.h', 'Foundation/', 'iPhone/', 'DebugUtils/'
  s.exclude_files = '**/*Test.m', '*/*AppleEvent*', '*/*Carbon*', \
  '*/GTMFourCharCode.*', '*/*AppleScript*', '*/*GTMAbstractDOListener*',
  '*/*FindFolder*', '*/GTMScriptRunner*', '*/GTMTransientRoot*'
  s.libraries = 'z', 'sqlite3'
  s.requires_arc = false
end
