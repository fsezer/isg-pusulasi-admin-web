#!/bin/bash
PORT="${ADMIN_PORT:-3010}"
echo "🛡️ İSG Atlası Admin Panel başlatılıyor..."
echo "Tarayıcınızda http://localhost:${PORT} adresini açın"
echo "(3000 Medcezir/Docker için ayrıldı — admin 3010)"
echo "Durdurmak için CTRL+C basın"
python3 -m http.server "$PORT"
