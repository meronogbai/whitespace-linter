Gem::Specification.new do |s|
  s.name = 'ws_lint'
  s.version = '1.1.0'
  s.executables << 'ws_lint'
  s.summary = 'Whitespace Linter'
  s.description =
    'Basic linter that detects and formats trailing whitespace and extra empty lines in your code and config files'
  s.authors = ['Meron Ogbai']
  s.email = 'okbaymeron@gmail.com'
  s.files = ['lib/detector.rb', 'lib/formatter.rb']
  s.homepage = 'https://github.com/meronokbay/whitespace-linter'
  s.metadata = {
    'source-code-uri' => 'https://github.com/meronokbay/whitespace-linter',
    'documentation_uri' => 'https://github.com/meronokbay/whitespace-linter#readme',
    'bug_tracker_uri'   => 'https://github.com/meronokbay/whitespace-linter/issues',
  }
  s.license = 'MIT'
  s.add_runtime_dependency 'colorize', '~> 0.8.1'
end
