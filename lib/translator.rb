# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticons|
    emoticons_hash = {}
    emoticons[get_meaning] = {}
    emoticons[get_emoticon] = {}
    get_meaning[emoticons[1]] = meaning
    get_emoticon[emoticons[0]] = emoticons[1]
    binding.pry
  end
  emoticons_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
