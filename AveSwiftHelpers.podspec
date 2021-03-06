Pod::Spec.new do |s|
    s.name             = 'AveSwiftHelpers'
    s.version          = '1.0.0'
    s.summary          = 'A collection of common swift helpers'
    s.homepage         = 'https://github.com/AndreasVerhoeven/AveSwiftHelpers'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Andreas Verhoeven' => 'cocoapods@aveapps.com' }
    s.source           = { :git => 'https://github.com/AndreasVerhoeven/AveSwiftHelpers.git', :tag => s.version.to_s }
    s.module_name      = 'AveSwiftHelpers'

    s.swift_versions = ['5.0']
    s.ios.deployment_target = '11.0'
    s.source_files = 'Sources/*.swift'
end
