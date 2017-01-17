export PS1='$(echo $(dirname \w)|sed -e "s;\(/.\)[^/]*;\1;g")/$(basename \w) $ '
