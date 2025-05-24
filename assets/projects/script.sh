#!/bin/bash

# Directorio con las imágenes JPG
INPUT_DIR="./"  # cámbialo si quieres

# Opciones de calidad y optimización
QUALITY=75  # puedes bajar a 75 para menos tamaño
MAX_SIZE="640x640"

for file in "$INPUT_DIR"/*.jpg; do
  if [ -f "$file" ]; then
    # Nombre temporal para la imagen procesada
    tmp_file="${file%.jpg}_tmp.jpg"

    # Reescalar solo si es mayor que 640x640, mantener aspecto
    convert "$file" -resize "$MAX_SIZE"\> -strip -interlace Plane -quality $QUALITY "$tmp_file"

    # Reemplazar original solo si el resultado es más pequeño
    original_size=$(stat -c%s "$file")
    optimized_size=$(stat -c%s "$tmp_file")

    if [ "$optimized_size" -lt "$original_size" ]; then
      mv "$tmp_file" "$file"
      echo "Optimizado: $file ($((original_size / 1024)) KB → $((optimized_size / 1024)) KB)"
    else
      rm "$tmp_file"
      echo "Sin cambios: $file (ya optimizado o más pequeño)"
    fi
  fi
done

echo "Proceso finalizado."