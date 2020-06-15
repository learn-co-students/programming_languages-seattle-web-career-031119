require 'pry'

def reformat_languages(languages)
  reformatted_language = {}
  languages.each do |oo_or_functional, language_keys|
    language_keys.each do |language,data|
      if !(reformatted_language.include?(language))
        reformatted_language[language] = {:type => '',:style => []}
      end
      data.each do |type_key, type|
      reformatted_language[language][:type] = type
      reformatted_language[language][:style].push(oo_or_functional)
    end
  end
end
return reformatted_language
end
