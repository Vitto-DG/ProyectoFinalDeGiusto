#!/bin/bash
#	Convierte automaticamente todos los archivos .ttf del directorio actual a .woff2

find . -type f -name "*.ttf" | while read f; do 
	echo "Convirtiendo: $f"
	woff2_compress "$f"; 
done

echo "Conversion completada."
