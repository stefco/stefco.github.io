#!/bin/bash
# Launch `stef_shell` REPL or GUI website using latest defaults.
# (c) Stefan Trklja Countryman, 2019
#
# ███████╗████████╗███████╗███████╗                                                          
# ██╔════╝╚══██╔══╝██╔════╝██╔════╝                                                          
# ███████╗   ██║   █████╗  █████╗                                                            
# ╚════██║   ██║   ██╔══╝  ██╔══╝                                                            
# ███████║   ██║   ███████╗██║                                                               
# ╚══════╝   ╚═╝   ╚══════╝╚═╝                                                               
#                                                                                            
#  ██████╗ ██████╗ ██╗   ██╗███╗   ██╗████████╗██████╗ ██╗   ██╗███╗   ███╗ █████╗ ███╗   ██╗
# ██╔════╝██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝██╔══██╗╚██╗ ██╔╝████╗ ████║██╔══██╗████╗  ██║
# ██║     ██║   ██║██║   ██║██╔██╗ ██║   ██║   ██████╔╝ ╚████╔╝ ██╔████╔██║███████║██╔██╗ ██║
# ██║     ██║   ██║██║   ██║██║╚██╗██║   ██║   ██╔══██╗  ╚██╔╝  ██║╚██╔╝██║██╔══██║██║╚██╗██║
# ╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║   ██║   ██║  ██║   ██║   ██║ ╚═╝ ██║██║  ██║██║ ╚████║
#  ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝

# consts
CONTACT='stef[at]stc.sh'  # Stef's email address
BIO=bio.txt               # Stef's biography
RESUME=resume.tex         # Stef's resume
CV=cv.tex                 # Stef's CV
PUBLICATIONS=pubs.txt     # List of Stef's publications
GITHUB=stefco             # Stef's GitHub
PROJECTS=projects.d       # Fun projects and volunteering
BLOGDIR=blog.d            # Bad opinions
GOOD_CODE=good_code.d     # Code written out of love
MISCREANTS=bad_code.d     # Code written in anger
PORTRAIT=portrait.txt     # Pic of Stef

usage() {
    sed 's/^ *//;/^$/d' <<<'
        USAGE: stc.sh [-g] [-h]

        Launch an interactive `stef_shell` terminal session to learn more about
        Stefan Trklja Countryman. Launch a regular website using `-g` flag.

        OPTIONS:
        -h          Print this help string.
        -g          Launch website.
    '
}

# parse CLI
while getopts "hg" opt; do
    case ${opt} in
        h)  usage && exit 0;;
        g)  make gui.html && open gui.html && exit 0;;
        \?) echo "Bad option: -${OPTARG}" && usage && exit 1;;
    esac
done

# launch repl or compile and launch website.
stef_shell \
    --cv "${CV}" \
    --bio "${BIO}" \
    --resume "${RESUME}" \
    --github "${GITHUB}" \
    --contact "${CONTACT}" \
    --blog-dir "${BLOGDIR}" \
    --portrait "${PORTRAIT}" \
    --projects "${PROJECTS}" \
    --good-code "${GOOD_CODE}" \
    --miscreants "${MISCREANTS}" \
    --publications "${PUBLICATIONS}"

# TODO old website deprecated, UI was too advanced for user tastes; delete this
# old_website --please-stop=true
