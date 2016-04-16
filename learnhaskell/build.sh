
 docker run --name pandoc -v `pwd`:/source d3d34d2d373b  --normalize  -f markdown -t revealjs -s guide-zh_CN.md -o guide-zh_CN-revealjs.html


docker rm pandoc


 docker run --name pandoc -v `pwd`:/source d3d34d2d373b  --normalize  -f markdown -t html5 -s guide-zh_CN.md -o guide-zh_CN.html


 docker run --name pandoc -v `pwd`:/source d3d34d2d373b  --normalize  -f markdown -t beamer -s guide-zh_CN.md -o guide-zh_CN-beamer.pdf



