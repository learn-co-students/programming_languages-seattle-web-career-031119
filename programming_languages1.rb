require 'pry'


def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, data|
#    binding.pry
        data.each do |language, type|
        new_hash[language] = type
#        styles_array = []
#        binding.pry
#        styles_array << style
#        new_hash[language][:style] = [style]
        new_hash[language][:style] = [] << style
        end
    end
#    binding.pry
    new_hash
end
