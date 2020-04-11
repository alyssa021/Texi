require "json"

CONFIG_FILE = "./texi.config.json"
DEFAULT_FONT = "Roboto"

if File.exist?(CONFIG_FILE)
  file = File.open CONFIG_FILE
  data = JSON.load file

  if data["font"]
    FONT = data["font"]
  else
    FONT = DEFAULT_FONT
  end

  file.close
else
  FONT = DEFAULT_FONT
end
