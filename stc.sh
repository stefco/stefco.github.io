#!/bin/bash
# Launch `stef_shell` REPL or GUI website using latest defaults.
# (c) Stefan Trklja Countryman, 2019
#
# .▄▄ · ▄▄▄▄▄▄▄▄ .·▄▄▄                                     
# ▐█ ▀. •██  ▀▄.▀·▐▄▄·                                     
# ▄▀▀▀█▄ ▐█.▪▐▀▀▪▄██▪                                      
# ▐█▄▪▐█ ▐█▌·▐█▄▄▌██▌.                                     
#  ▀▀▀▀  ▀▀▀  ▀▀▀ ▀▀▀                                      
#  ▄▄·       ▄• ▄▌ ▐ ▄ ▄▄▄▄▄▄▄▄   ▄· ▄▌• ▌ ▄ ·.  ▄▄▄·  ▐ ▄ 
# ▐█ ▌▪▪     █▪██▌•█▌▐█•██  ▀▄ █·▐█▪██▌·██ ▐███▪▐█ ▀█ •█▌▐█
# ██ ▄▄ ▄█▀▄ █▌▐█▌▐█▐▐▌ ▐█.▪▐▀▀▄ ▐█▌▐█▪▐█ ▌▐▌▐█·▄█▀▀█ ▐█▐▐▌
# ▐███▌▐█▌.▐▌▐█▄█▌██▐█▌ ▐█▌·▐█•█▌ ▐█▀·.██ ██▌▐█▌▐█ ▪▐▌██▐█▌
# ·▀▀▀  ▀█▄▀▪ ▀▀▀ ▀▀ █▪ ▀▀▀ .▀  ▀  ▀ • ▀▀  █▪▀▀▀ ▀  ▀ ▀▀ █▪

# consts
CONTACT='stef[at]stc.sh'
BIO=bio.txt
RESUME=resume.tex
CV=cv.tex
PUBLICATIONS=pubs.txt
GITHUB=stefco
PROJECTS=projects.d
BLOGDIR=blog.d
GOOD_CODE=good_code.d
MISCREANTS=bad_code.d
PORTRAIT=portrait.txt

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
for opt in "$@"; do [[ "${opt}" = "-h" ]] &amp;&amp; usage; done

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
