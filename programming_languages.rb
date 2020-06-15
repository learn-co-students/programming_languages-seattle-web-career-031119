def reformat_languages(languages)
  new_hash = {}
  languages.keys.each do |lstyle|
    languages[lstyle].keys.each do |language|
      if new_hash.keys.include?(language) == false
        new_hash[language] = {type: languages[lstyle][language][:type], style: [lstyle]}
      else
        new_hash[language][:style].push(lstyle)
      end
    end
  end
  new_hash
end
