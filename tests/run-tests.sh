#!/usr/bin/env bash

# EXTENSIONS="jupyterlab-ihaskell jupyterlab_bokeh"
# nix-shell --command "generate-jupyterlab-directory $EXTENSIONS"

echo "Jupyter version: $(nix-shell --pure --command 'jupyter --version')"

#for KERNEL in $(find ../example -mindepth 1 -maxdepth 1 | grep -v 'ipynb');
#do
#  echo "Running $(basename -- "$KERNEL") tests..."
#  for EXAMPLE in $(find "$KERNEL" -mindepth 1 -maxdepth 1 | grep -v 'ipynb');
#  do
#    echo -n "- $(basename -- "$EXAMPLE"): "
#    pushd "$EXAMPLE" > /dev/null
#    nix-shell --pure --command "jupyter nbconvert --execute *.ipynb" &> .errors
#    if [ $? -eq 0 ]; then
#      echo "SUCCESS"
#    else
#      echo "FAILED"
#      cat .errors
#    fi
#    rm .errors
#    popd > /dev/null
#  done
#done
