# run tests when they're changed
# watch('Tests/.*hs'){|md| system "tbc #{md[0]}"}
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

 
