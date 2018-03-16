Pod::Spec.new do |s|
  s.name             = “ZFCategory"
  s.version          = “0.0.1”
  s.summary          = "Custom Category used on iOS by zhangpengfei”
  s.description      = <<-DESC
                       Custom Category used on iOS, which implement by Objective-C.
                       DESC
  s.homepage         = "https://github.com/FullStackEngineer-Zpf/ZFCategory.git"
  s.license          = 'MIT'
  s.author           = { "Zhangpengfei" => "2838118944@qq.com"}
  s.platform         = :ios, ‘8.0’
  s.source           = { :git => "https://github.com/ZHANGMRXIN/ZXCategory.git", :tag => s.version }
  s.source_files     = 'Category/**/*'
  s.requires_arc     = true
end
