#!/bin/bash

# Lanceur automatique de audioclient et audioserver
make
if [ $? -eq 0 ]; then
	xterm -hold -e "padsp ./audioclient" &
	sleep 1
	xterm -hold -e "./audioserver" &
	sleep 1
	xterm -hold -e "padsp ./audioclient" &
	sleep 1
	xterm -hold -e "padsp ./audioclient" &
	sleep 1
	xterm -hold -e "padsp ./audioclient" &
	sleep 110
	xterm -hold -e "padsp ./audioclient" &
fi
