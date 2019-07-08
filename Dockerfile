FROM alpine:3.9

LABEL "com.github.actions.name"="Git"
LABEL "com.github.actions.description"="Run Git"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/popperized/git"
LABEL "homepage"="http://github.com/systemslab/popper"
LABEL "maintainer"="Ivo Jimenez <ivo@cs.ucsc.edu>"

RUN apk --no-cache add git

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
