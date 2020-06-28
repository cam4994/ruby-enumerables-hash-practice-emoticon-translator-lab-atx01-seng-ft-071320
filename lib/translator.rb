require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  hash = {}
  emoticons.each do |key, values|
    hash[key] = {}
    hash[key][:english] = values[0]
    hash[key][:japanese] = values[1]
  end 
  hash
end

x = load_library("./lib/emoticons.yml")
puts x 

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file, emoji)
  hash = load_library(file)
  english_meaning = ""
  hash.each do |key, inner_hash|
    inner_hash.each do |language, emoticon|
      if emoticon == emoji 
        english_meaning = key 
      end 
    end 
  end 
  if english_meaning = ""
    return "Sorry, that emoticon was not found"
  else 
    return english_meaning
  end 
end