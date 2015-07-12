using YAML

function to_html_table{T}(a::Array{T,2}, out::IO)
	(nrow, mcol) = size(a)
	println("<table class=\"table\">\n<tbody>")
	for i in 1:nrow
		println(out, "<tr>")
		for j in 1:ncol
			println(out, "<td>", replace(a[i][j], "_", "<br>"),"</td>")
		end
		println(out, "</tr>")
	end
	println(out, "</tbody>\n</table>")
end


function to_html_table{T}(a::Array{T, 1}, out::IO)
	println("<table class=\"table\">\n<tbody>")
	for row in a
		println(out, "<tr>")
		for e in row
			println(out, "<td>", replace(e, "_", "<br>"),"</td>")
		end
		println(out, "</tr>")
	end
	println(out, "</tbody>\n</table>")
end

to_html_table(a) = to_html_table(a, STDOUT)

function parse(filename::String)
	a = YAML.load(open(filename))
	to_html_table(a)
end
