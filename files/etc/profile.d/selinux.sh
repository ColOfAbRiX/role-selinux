#!/bin/bash

# System-wide script for SELinux

# are we an interactive shell?
if [ "$PS1" ]; then
    # Display AVC
    alias avcshow="ausearch --interpret --message AVC,USER_AVC --success no"
    alias avcshow10="avcshow | tail -30"
    alias avcshowrecent="avcshow --start recent"

    # Explain AVC
    alias avcwhy="avcshow | audit2why"
    alias avcwhy10="avcshow10 | audit2why"
    alias avcwhyrecent="avcshowrecent | audit2why"

    # Allow the AVC
    alias avcallow='avcshow | audit2allow'
    alias avcallow10='avcshow10 | audit2allow'
    alias avcallowrecent='avcshowrecent | audit2allow'
fi
