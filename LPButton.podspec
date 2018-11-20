Pod::Spec.new do |s|

  s.name         = "LPButton"
  s.version      = "1.0.0"
  s.author       = { "brucewangdev" => "brucewangdev@126.com" }
  s.homepage     = "https://github.com/bruceWangDev/LPButton"
  s.summary      = "A button that sets the position of the image and text by calculating the frame."
  s.source       = { :git => "https://github.com/bruceWangDev/LPButton.git", :tag => s.version  }
  s.license     = { :type => "MIT", :file => "LICENSE" }
  s.platform = :ios, '9.0'
  s.requires_arc = true
  s.source_files  = "LPButtonDemo/LPButton/*"

end
