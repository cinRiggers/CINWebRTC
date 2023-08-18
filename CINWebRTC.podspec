Pod::Spec.new do |spec|

  spec.name         = "CINWebRTC"
  spec.version      = "1.0.1"
  spec.summary      = "WebRTC framework for call."

  spec.description  = <<-DESC
			WebRTC media library for call usage, only framework
                   DESC

  spec.homepage     = "https://github.com/cinRiggers/CINWebRTC"
  
  spec.author       =  "Riggers"
  spec.source       = { :git => "https://github.com/cinRiggers/CINWebRTC.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "9.2"
  
  spec.static_framework = false
  spec.requires_arc = true
  spec.pod_target_xcconfig =   {'ENABLE_BITCODE' => 'NO'} 
  
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.vendored_frameworks = 'Framework/WebRTC.framework' 

end
