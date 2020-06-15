def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each {|key, value|
    value.each {|key, value|
      new_hash[key] = value
    }
  }
  new_hash.each {|key, value|
    new_hash[key][:style] = []
    if languages[:oo].has_key?(key)
      new_hash[key][:style] << :oo
    end  
    if languages[:functional].has_key?(key)
      new_hash[key][:style] << :functional
    end
  }
end