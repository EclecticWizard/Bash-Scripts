src=(~/Documents/Obsidian/
  ~/Documents/NKS-Notes/
  ~/Documents/Calibre\ Library/
  ~/Documents/Qualifications/)

dest=(/mnt/share/vault_backups/
  /mnt/share/vault_backups/
  /mnt/share/Calibre/
  /mnt/share/)

i=0
while [ $i -lt ${#src[@]} ]; do
  echo "[*] backing up ${src[i]}"
  rsync -av ${src[i]} ${dest[i]}
  ((i++))
done

echo "[+] Done!"
