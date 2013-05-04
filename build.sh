docco pixelscript/gettingstarted/*.litcoffee --output content/pixelscript/gettingstarted/ --layout linear --css pixelscript/gettingstarted/gettingstarted.css
cp -r pixelscript/gettingstarted/gfx content/pixelscript/gettingstarted
cp pixelscript/gettingstarted/gettingstarted.css content/pixelscript/gettingstarted/

docco pixelscript/*.litcoffee --output content/pixelscript/ --layout parallel
cp -r pixelscript/gfx content/pixelscript