# frozen_string_literal: true

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
    system "ruby **/test_*.rb #{option}"
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

multitask test: %i[go elixir ruby typescript rust] do
  puts 'Run all tests together.'
end

def info(lang)
  if verbose == true
    puts " >>>>>>>>>>>>>>>> #{lang} Started"
    option = '-v'
  end
  yield(option)
  puts " <<<<<<<<<<<<<<<< #{lang} Finished", '' if verbose == true
end
