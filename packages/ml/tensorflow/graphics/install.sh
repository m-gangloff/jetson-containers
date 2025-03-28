#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of tensorflow-graphics ${TENSORFLOW_GRAPHICS}"
	exit 1
fi

pip3 install openexr tensorflow_graphics==${TENSORFLOW_GRAPHICS_VERSION}