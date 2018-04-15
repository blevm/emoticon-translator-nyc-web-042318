# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |meaning, emoticon_list|
    emoticons_hash["get_meaning"][emoticon_list[1]] = meaning
    emoticons_hash["get_emoticon"][emoticon_list[0]] = emoticon_list[1]
  end
  emoticons_hash
end

def get_japanese_emoticon(yaml_file,emoticon)
  library = load_library(yaml_file)
  library["get_emoticon"][emoticon]
  # code goes here
end

def get_english_meaning(yaml_file,emoticon)
  # code goes here
  library = load_library(yaml_file)
  library["get_meaning"][emoticon]
end
