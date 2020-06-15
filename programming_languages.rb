require 'pry'


def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, data|
        data.each do |language, type|
            new_hash[language] ||= type
            new_hash[language][:style] ||= []
#            binding.pry
            new_hash[language][:style] << style
#            binding.pry
        end
    end
    new_hash
end


