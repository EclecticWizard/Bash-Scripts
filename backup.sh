src=(~/Documents/Obsidian/
  ~/Documents/NKS-Notes/
  ~/Documents/calibre_library/
  ~/Documents/Qualifications/)

dest=(/mnt/share/vault_backups/
  /mnt/share/vault_backups/
  /mnt/share/Calibre/
  /mnt/share/Calibre/)

dropbox=(~/Documents/Obsidian/
  ~/Documents/NKS-Notes/)

i=0
while [ $i -lt ${#src[@]} ]; do
  echo "--[*] backing up ${src[i]}"
  rsync -av ${src[i]} ${dest[i]}
  ((i++))
done

echo "[*]Manually copying files for Dropbox"
i=0
while [ $i -lt ${#dropbox[@]} ]; do
  echo "--[*] Copying ${dropbox[i]}"
  cp -r ${dropbox[i]} ~/Dropbox/Obsidian/
  ((i++))
done

echo "[+] Done!"
