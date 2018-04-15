# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_hash = {}
  emoticons.collect do |meaning, emoticon_list|
    
    emoticons_hash[:get_meaning] = {}
    emoticons_hash[:get_emoticon] = {}
    emoticons_hash[:get_meaning][emoticon_list[1]] = meaning
    emoticons_hash[:get_emoticon][emoticon_list[0]] = emoticon_list[1]
  end
  binding.pry
  emoticons_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
