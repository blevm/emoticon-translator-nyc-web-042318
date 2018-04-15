# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_hash = {["get_meaning"] => {}, ["get_emoticon"] => {}}
  emoticons.each do |meaning, emoticon_list|
    english = emoticon_list[0]
    japanese = emoticon_list[1]
    binding.pry
    emoticons_hash["get_meaning"][emoticon_list[1]] = meaning
    emoticons_hash["get_emoticon"][emoticon_list[0]] = emoticon_list[1]
  end
  emoticons_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
