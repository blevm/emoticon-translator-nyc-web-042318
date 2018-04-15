# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticon_list|

    emoticons[:get_meaning] = {}
    emoticons[:get_emoticon] = {}
    binding.pry
    get_meaning[emoticon_list[1]] = meaning
    get_emoticon[emoticon_list[0]] = emoticon_list[1]
  end
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
