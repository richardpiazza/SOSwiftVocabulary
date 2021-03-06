Pod::Spec.new do |s|
  s.name = "SOSwiftVocabulary"
  s.version = "1.6.0"
  s.summary = "The Schema.org structured data vocabulary defined as a series of swift protocols."
  s.description = <<-DESC
  Schema.org is a collaborative, community activity with a mission to create, maintain,
  and promote schemas for structured data on the Internet, on web pages, in email messages,
  and beyond. This library presents some of the core vocabulary as a series of Swift protocols.
                     DESC
  s.homepage = "https://github.com/richardpiazza/SOSwiftVocabulary"
  s.license = 'MIT'
  s.author = { "Richard Piazza" => "github@richardpiazza.com" }
  s.social_media_url = 'https://twitter.com/richardpiazza'

  s.source = { :git => "https://github.com/richardpiazza/SOSwiftVocabulary.git", :tag => s.version.to_s }
  s.source_files = 'Sources/SOSwiftVocabulary/*'
  s.swift_version = '5.0'
  s.frameworks = 'Foundation'
  s.requires_arc = true

  s.osx.deployment_target = "10.13"
  s.ios.deployment_target = "11.0"
  s.tvos.deployment_target = "11.0"
  s.watchos.deployment_target = "4.0"
end
