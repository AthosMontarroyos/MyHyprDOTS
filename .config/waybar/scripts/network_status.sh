#!/bin/bash

if nmcli -t -f WIFI g | grep -q "enabled"; then
  if nmcli -t -f STATE g | grep -q "connected"; then
    echo '{"text": "   ", "tooltip": "Conectado à internet", "class": "connected"}'
  else
    echo '{"text": "󱚵", "tooltip": "Sem conexão", "class": "disconnected"}'
  fi
else
  echo '{"text": "󱚼", "tooltip": "Wi-Fi desativado", "class": "disabled"}'
fi
