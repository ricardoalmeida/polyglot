# frozen_string_literal: true

require 'rake/testtask'

task default: 'test'
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.libs << 'src'
  t.test_files = FileList['test/**/test_*.rb']
end

task :go do |t|
  info(t.name) do |option|
    system "go test ./... #{option}"
  end
end

task :elixir do |t|
  info(t.name) do |_option|
    system 'mix test'
  end
end

task :ruby do |t|
  info(t.name) do |option|
    system "rake test #{option}"
  end
end

task :typescript do |t|
  info(t.name) do |_option|
    system 'deno test **/*_test.ts'
  end
end

task :rust do |t|
  info(t.name) do |_option|
    system 'cargo test'
  end
end

multitask polyglot: %i[go elixir ruby typescript rust] do
  puts 'Run all tests together.'
end

def info(lang)
  if verbose == true
    puts " >>>>>>>>>>>>>>>> #{lang} Started"
    option = lang == 'ruby' ? "TESTOPTS='-v'" : '-v'
  end
  yield(option)
  puts " <<<<<<<<<<<<<<<< #{lang} Finished", '' if verbose == true
end
