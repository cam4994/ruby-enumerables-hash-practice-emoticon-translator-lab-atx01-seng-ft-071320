require "yaml"

def load_library(file)
  emoticons = YAML.load_file('emoticons.yml')
  hash = {}
  emoticons.each do |key, values|
    hash[key] = {}
    hash[key][:english] = values[0]
    hash[key][:japanese] = values[1]
  end 
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end