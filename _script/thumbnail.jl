function to_html(s) 
	println(STDERR, typeof(s))
	println("<div class=\"row\">")
	for a in s
	println(STDERR, typeof(a))
		println("<div class=\"col-sm-2 col-lg-1\">\n<div class=\"thumbnail\">\n<img src=\"", a,"\" alt=\"...\">\n</div>\n<\div>")
	end
	println("</div>")
end

const OUTPUT_FOLDER = "./assets/images/gallery"
const DATA_PATH= "./_data/gallery.csv"
const WEB_X = 1200
const WEB_Y = 1200
const THUMBNAIL_X = 200
const THUMBNAIL_Y = 200

# Dependency: Imagemagick
function generate_gallery(folder_path)
  verborse = true
  println("Started to generate gallery.")
  images = readdir(folder_path)
  if isfile(DATA_PATH)
    output = readcsv(DATA_PATH)
  else
    output = ["image" "thumbnail"]
  end
  for image_path in images
    verborse && println("for $image_path")
    image = joinpath(folder_path, image_path)
    row = [generate_web_image(image) generate_thumbnail(image)]
    output = vcat(output, row)
  end
  writecsv(DATA_PATH, output)
end

function generate_web_image(image_path)
  output_path = joinpath(OUTPUT_FOLDER, basename(replace(image_path, r"(\.\w+)", "_web.jpg")))
  run(`convert -thumbnail $(WEB_X)x$(WEB_Y) $image_path $output_path`)
  output_path
end

function generate_thumbnail(image_path)
  output_path = joinpath(OUTPUT_FOLDER, basename(replace(image_path, r"(\.\w+)", "_thumbnail.jpg")))
  run(`convert -thumbnail $(THUMBNAIL_X)x$(THUMBNAIL_Y)^ -gravity center -extent 200x200 -quality 85% -gaussian-blur 0.05 $image_path $output_path`)
  return output_path
end

length(ARGS) < 1 && error("Please specify the foloder with images.")
generate_gallery(ARGS[1])