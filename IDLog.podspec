#
#  Be sure to run `pod spec lint IDLog.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "IDLog"
  s.version      = "1.0.0"
  s.summary      = "A pretty light log util on NSLog, make it more easier for us to distinguish different kinds of logs(error,warning,debug,info,etc) using small icon prefix,and it's easy to use"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  A pretty light log util on NSLog, make it more easier for us to distinguish different kinds of logs(error,warning,debug,info,etc) using small icon prefix,and it's easy to use
                   DESC

  s.homepage     = "https://github.com/yuhanle/IDLog"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "煜寒了" => "deadvia@gmail.com" }
  s.source       = { :git => "https://github.com/yuhanle/IDLog.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "", "**/*.{h,m}"

end
