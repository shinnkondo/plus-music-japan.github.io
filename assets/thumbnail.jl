function to_html(s) 
	println(STDERR, typeof(s))
	println("<div class=\"row\">")
	for a in s
	println(STDERR, typeof(a))
		println("<div class=\"col-sm-2 col-lg-1\">\n<div class=\"thumbnail\">\n<img src=\"", a,"\" alt=\"...\">\n</div>\n<\div>")
	end
	println("</div>")
end

to_html(ARGS);