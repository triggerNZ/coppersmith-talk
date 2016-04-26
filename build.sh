#!/bin/sh

markdown-to-slides talk.md -o talk-tmp.html

cat talk-tmp.html | sed 's|</head>|<link rel="stylesheet" type="text/css" href="style.css"></head>|g' | sed 's|http://gnab.github.io/remark/downloads/||g' > talk.html
