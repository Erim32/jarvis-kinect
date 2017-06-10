echo "## Désinstallation du driver kinect v1:"
if [[ nbr -ne 0 ]]; then
    cat ../../hooks/program_startup | grep -v "kinect_upload_fw" > temp.txt
    cat temp.txt > ../../hooks/program_startup
    rm temp.txt
fi
jv_success "## Fin de la désinstallation de jarvis-kinect-v1"
