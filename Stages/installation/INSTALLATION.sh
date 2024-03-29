#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Installation" \
        --cancel-label "Back" \
        --menu "Use UP/DOWN arrows to navigate." 10 50 3 \
        1 "Sync & Update Pacman" \
        2 "Continue" \
    )

    case $choice in
        1)
            clear
            sudo pacman -Syu --noconfirm

            echo
            read -p "Pacman Sync & Update - Done!"
            continue
            ;;
        2)
            break
            ;;
        *)
            exit
            ;;
    esac
done

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Select Package Group to install" \
        --cancel-label "Back" \
        --menu "Use UP/DOWN arrows to navigate." 15 50 8 \
        1 "Essentials" \
        2 "Pantheon Base" \
        3 "Wingpanel Indicators" \
        4 "Switchboard Plugs" \
        5 "Default Applications" \
        6 "Themes & Settings" \
        7 "Pantheon Tweaks" \
        8 "Miscellaneous"
    )

    case $choice in
        1)
            sh Stages/installation/1.sh
            ;;
        2)
            sh Stages/installation/2.sh
            ;;
        3)
            sh Stages/installation/3.sh
            ;;
        4)
            sh Stages/installation/4.sh
            ;;
        5)
            sh Stages/installation/5.sh
            ;;
        6)
            sh Stages/installation/6.sh
            ;;
        7)
            sh Stages/installation/7.sh
            ;;
        8)
            sh Stages/installation/8.sh
            ;;
        *)
            exit
            ;;
    esac
done