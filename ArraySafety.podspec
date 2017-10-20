Pod::Spec.new do |s|
  s.name             = 'ArraySafety'
  s.version          = '1.0.0'
  s.summary          = 'Provides safe read/write access to swift arrays'
  s.description      = <<-DESC
Provides safe read/write access to swift arrays to make your code more succinct
                       DESC

  s.homepage         = 'https://github.com/macdoum1/ArraySafety'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'macdoum1' => 'aplmik24@icloud.com' }
  s.source           = { :git => 'https://github.com/macdoum1/ArraySafety.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ArraySafety/Classes/**/*'
end
