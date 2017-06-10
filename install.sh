echo "## Installation du drier kinect v1:"
echo "Veuillez patienter quelques minutes:"

cd ressources/kinect-audio-setup
make install >1 /dev/null

jv_success "1 / 4"
./kinect_fetch_fw /lib/firmware/kinect  >1 /dev/null
jv_success "2 / 4"
udevadm control --reload-rules
jv_success "3 / 4"

#Tache de demarage
nbr=`cat ../../hooks/program_startup | grep "kinect_upload_fw" -c`

if [[ nbr -eq 0 ]]; then
    echo "kinect_upload_fw /lib/firmware/kinect/UACFirmware" >	../../hooks/program_startup
fi
jv_success "4 / 4"
jv_success "## Fin de l'installation de jarvis-kinect-v1"
