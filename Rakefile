# frozen_string_literal: true

task :go do |t|
  info(t.name) do |option|
    sh "cd go && go test ./... #{option}"
  end
end

task :elixir do |t|
  info(t.name) do |_option|
    sh 'cd elixir && mix test'
  end
end

task :ruby do |t|
  info(t.name) do |option|
    sh "cd ruby && rake test #{option}"
  end
end

task :typescript do |t|
  info(t.name) do |_option|
    sh 'cd typescript && deno test tests/**/*_test.ts'
  end
end

task :rust do |t|
  info(t.name) do |_option|
    sh 'cd rust && cargo test'
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
