def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, lang_hash|
    lang_hash.each do |lang, properties|
      properties.each do |type_sym, type|
        if new_hash.has_key?(lang.to_sym)
          new_hash[lang.to_sym][:style] << styles
        else
          new_hash[lang.to_sym] = {type_sym => type, :style => [styles]}
        end
      end
    end
  end
  new_hash
end
