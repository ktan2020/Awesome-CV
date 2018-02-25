FROM fedora:23

LABEL maintainer="ktan442@gmail.com"

RUN mkdir /doc
WORKDIR /doc

RUN export LANG=C.UTF-8 &&\
    dnf update -y && dnf group install -y Fonts && dnf install -y \
    texlive \
    texlive-xetex \
    texlive-collection-fontsrecommended \
    texlive-collection-fontsextra \
    texlive-collection-xetex \
    'tex(eu1enc.def)' \
    'tex(tabu.sty)'

ENTRYPOINT ["xelatex"]
CMD ["--help"]
