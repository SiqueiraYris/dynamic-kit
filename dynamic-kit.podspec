Pod::Spec.new do |spec|
    spec.name = 'DynamicKit'
    spec.version = '1.0.0'
    spec.license = 'MIT'
    spec.summary = 'Swift library for reactive data management on iOS'
    spec.homepage = 'https://github.com/SiqueiraYris/dynamic-kit'
    spec.authors = { 'Yris Siqueira' => 'siqueirayris@hotmail.com' }
    spec.source = { :git => 'https://github.com/SiqueiraYris/dynamic-kit', :tag => spec.version.to_s }
    spec.source_files = [
        'Sources/DynamicKit/**', 
        'Sources/DynamicKit/**/*.{swift}'
    ]
    spec.requires_arc = true
    spec.static_framework = true
    spec.ios.deployment_target = '12.0'
    spec.platforms = { :ios => "12.0" }
    spec.swift_versions = ['5']
end
