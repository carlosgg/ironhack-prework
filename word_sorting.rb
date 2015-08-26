def word_sorting(sentence)
	sentence_clean = sentence.gsub(/\d|\W/, " ").split #remove punctuation characters and split
	result = sentence_clean.sort_by {|word| [word.downcase]} #sort ignoring case
	puts "#{result}"  #print the result
end

word_sorting("Lorem ipsum, zArd dolor est!")