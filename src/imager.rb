def generateImage(text, category, filename)
  width = 500
  height = 500
  color_combi = rand(COLORS.length / 2) * 2
  img = Image.new(width, height) {
    self.background_color = "##{COLORS[color_combi]}"
  }

  text_img = Draw.new
  text_img.stroke("transparent")
  text_img.gravity = CenterGravity
  text_img.annotate(img, 0, 0, 0, 0, fit_text(text, width)) { |txt|
    txt.gravity = CenterGravity
    txt.pointsize = 36
    txt.font = FONT
    txt.font_weight = Magick::BoldWeight
    txt.fill = "##{COLORS[color_combi + 1]}"
  }

  text_img.draw(img)

  FileUtils.mkdir_p "images/#{category}"
  img.write("images/#{category}/#{filename}")

end
