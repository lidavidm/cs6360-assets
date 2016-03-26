#!/bin/sh

STATIC_PATH=$(pwd)/..
BLOCKLY=${STATIC_PATH}/blockly
CLOSURE=${STATIC_PATH}/closure-library/
CLOSUREBUILDER=${CLOSURE}/closure/bin/build/closurebuilder.py

echo ${STATIC_PATH}

python2 ${CLOSUREBUILDER} \
        -o script \
        --root=${CLOSURE} \
        --root=${BLOCKLY}/core \
        --root=${BLOCKLY}/generators \
        --namespace="Blockly" \
        --namespace="Blockly.Python" \
        --namespace="Blockly.Python.variables" \
        --namespace="Blockly.Python.loops" \
        --namespace="Blockly.Python.math" \
        --namespace="Blockly.Python.logic" \
        > js/blockly-custom-full.js
