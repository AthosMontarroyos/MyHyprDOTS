#!/bin/bash

# Caminho da pasta com imagens
IMG_DIR="$HOME/.config/fastfetch/logo"

# Escolhe uma imagem aleatória da pasta
RANDOM_IMG=$(find "$IMG_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Caminho do config
CONFIG_FILE="$HOME/.config/fastfetch/config.jsonc"

# Atualiza o campo "source" no config.jsonc com a imagem sorteada
sed -i -E 's#("source": ")[^"]+#\1'"$RANDOM_IMG"'#' "$CONFIG_FILE"

# Executa o fastfetch
fastfetch