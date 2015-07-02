
print('<div class="row">');
print("\n");
foreach (@ARGV) {
    print('<div class="col-xs-2 col-md-1">');
    print("\n");
    print('<div class="thumbnail">');
    print("\n");
    print("<img src=\"$_\" alt=\"...\">\n");
    print("</div>\n</div>\n");
}
print("</div>\n")

    
