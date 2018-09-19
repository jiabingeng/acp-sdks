Pod::Spec.new do |s|
  s.name         = "ACPAcquisitionBeta"
  s.version      = "1.0.0beta"
  s.summary      = "BETA - Acquisition framework for Adobe Experience Cloud SDK. Written and Supported by Adobe, the official Pod for the Adobe Experience Cloud."
  s.description  = <<-DESC
                   By using the Adobe Cloud Platform SDKs (“Beta”), you hereby acknowledge that the Beta is provided “as is” without warranty of any kind. Adobe shall have no obligation to maintain, correct, update, change, modify or otherwise support the Beta. You are advised to use caution and not to rely in any way on the correct functioning or performance of such Beta and/or accompanying materials.

                   The Acquisition framework provides APIs that allow use of acquisition and Adobe link features in the V5 Adobe Experience Cloud SDK.
                   DESC

  s.homepage     = "https://github.com/Adobe-Marketing-Cloud/acp-sdks/releases"

  s.license      = {:type => "Commercial", :text => "Adobe Systems, Incorporated.  All Rights Reserved."}
  s.author       = "Adobe Cloud Platform SDK Team"
  s.source       = { :git => 'https://github.com/Adobe-Marketing-Cloud/acp-sdks.git', :tag => "v1.0.0beta-ACPAcquisition" }
  s.platform     = :ios, '10.0'

  s.default_subspec = 'iOS'

  # dependency on the core framework
  s.dependency "ACPCoreBeta", ">= 1.0.0beta"

  s.subspec 'iOS' do |ios|
    ios.vendored_frameworks = 'ACPAcquisition_iOS.framework'
    ios.xcconfig = {
      "FRAMEWORK_SEARCH_PATHS" => "'${PODS_ROOT}/ACPAcquisitionBeta'",
      "LD_RUNPATH_SEARCH_PATHS" => "@loader_path/../Frameworks"
    }
    ios.requires_arc = true
  end
end