Pod::Spec.new do |s|

s.name         = "ZFCategory"
s.version      = "0.0.1"
s.summary      = "系统类目 by张"

s.description  = <<-DESC
系统类目
DESC

s.homepage     = "https://github.com/FullStackEngineer-Zpf/ZFCategory"
s.license      = "MIT"
s.author       = { "Zhangpengfei" => "2838118944@qq.com" }
s.platform     = :ios,'8.0'

s.source       = { :git => "https://github.com/FullStackEngineer-Zpf/ZFCategory.git", :tag => "#{s.version}" }
s.source_files = "Category/*.{h,m}"
s.frameworks = "Foundation","UIKit"
s.requires_arc = true
end

