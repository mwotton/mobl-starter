# for the moment, when anything changes, run everything
watch('src/.*\.mobl') do |md|
  files = Dir['**/*.mobl'].map {|f| "-i #{f}"}.join(' ')
  result = `mobl #{files}`
  if $?.to_i == 0
    puts "passed"
  else
    puts "failed :("
  end
end

 
