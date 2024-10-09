#!/bin/bash

# Diretório onde estão os arquivos (modifique conforme necessário)
DIR=""

# Extensão a ser adicionada
EXTENSAO="md"

# Verifica todos os arquivos sem extensão no diretório
for file in "$DIR"/*; do
    # Verifica se o arquivo não tem extensão
    if [[ "$file" != *.* ]]; then
        # Adiciona a extensão ao arquivo
        mv "$file" "$file.$EXTENSAO"
        echo "Extensão .$EXTENSAO adicionada ao arquivo: $file"
    fi
done

echo "Processo concluído!"
