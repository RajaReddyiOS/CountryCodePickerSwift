
Pod::Spec.new do |s|

s.name         = "CountryCodePickerSwift"
  s.version      = "1.0.0"
  s.summary      = "Pick your country dial code."
  s.description  = "Select your Country it will returns you Country Name, Dial Code, Even you can filter based on your search"
  s.homepage     = "https://github.com/RajaReddyiOS/CountryCodePickerSwift"
  s.license      = "MIT"
  s.author             = { "Raja Reddy" => "rajareddy2606@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/RajaReddyiOS/CountryCodePickerSwift.git", :tag => "#{s.version}" }
  s.source_files  = "CountryCodePickerSwift/**/*.{h,m,swift}"
  s.resources = "CountryCodePickerSwift/**/*.{png,bundle,json}"
  s.framework  = "UIKit"
  s.swift_version = "3.2"

end
