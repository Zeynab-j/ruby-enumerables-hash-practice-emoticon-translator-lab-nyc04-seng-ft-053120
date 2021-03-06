# require modules here
require 'yaml'

def load_library(path)
  new_hash = {}
  YAML.load_file(path).each do |key, value|
  new_hash[key] = {}
  new_hash[key][:english] = value[0]
  new_hash[key][:japanese] = value[1]
end
new_hash
  end

def get_japanese_emoticon(path, emoticon)
  sorted_library = load_library(path)
  sorted_library.each do | key, value |
    if emoticon == value[:english]
      return value[:japanese]
    end
  end
    return "Sorry, that emoticon was not found"
  end

def get_english_meaning(path, emoticon)
  sorted_library = load_library(path)
  sorted_library.each do | key, value |
    if emoticon == value[:japanese]
      return key
    end
  end
    return "Sorry, that emoticon was not found"
  end
