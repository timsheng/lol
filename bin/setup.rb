	def test_data file
		content = ''
		file_path = File.expand_path(File.join('.', 'app', 'test_data', "#{file}.yml"))
		raise "Can not find #{file}.yml" unless File.exists?(file_path)
		File.open(file_path, 'r') do |handle|
			content = handle.read
		end
		Psych.load ERB.new(content).result(binding)
	end

	$navi = NdbNavigator.new $config

