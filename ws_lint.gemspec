Gem::Specification.new do |s|
  s.name = 'ws_lint'
  s.version = '0.1.0'
  s.executables << 'ws_lint'
  s.summary = 'Whitespace Linter'
  s.description =
    'Basic linter that detects and formats trailing whitespace and extra empty lines in your code and config files'
  s.authors = ['Meron Ogbai']
  s.email = 'okbaymeron@gmail.com'
  s.files = ['lib/detector.rb', 'lib/formatter.rb']
  s.homepage = 'https://github.com/meronokbay/whitespace-linter'
  s.license = 'MIT'
end
