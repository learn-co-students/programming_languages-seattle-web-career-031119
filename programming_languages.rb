require 'pry'

def reformat_languages(languages)
  # your code here
  result = {}
  languages.each do |style, langs|
    langs.each do |lang, types|
      if(result[lang])
        result[lang][:style] << style
      else 
        result[lang] = {
          type: types.values.join(""),
          style: [] << style
        }
      end
    end
  end
  result
end
