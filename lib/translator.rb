# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticons|
    get_meaning[emoticons[1]] = meaning
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
