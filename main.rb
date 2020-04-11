FileUtils.mkdir_p 'images/'

image_no = 0
for item in $data
  filename = "#{image_no}.jpg"
  generateImage(item["text"], item["category"], filename)

  image_no += 1
end
