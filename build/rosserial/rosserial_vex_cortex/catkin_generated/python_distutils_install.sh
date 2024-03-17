#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/rhouck/hydros_ws/src/rosserial/rosserial_vex_cortex"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/rhouck/hydros_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/rhouck/hydros_ws/install/lib/python3/dist-packages:/home/rhouck/hydros_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/rhouck/hydros_ws/build" \
    "/usr/bin/python3" \
    "/home/rhouck/hydros_ws/src/rosserial/rosserial_vex_cortex/setup.py" \
     \
    build --build-base "/home/rhouck/hydros_ws/build/rosserial/rosserial_vex_cortex" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/rhouck/hydros_ws/install" --install-scripts="/home/rhouck/hydros_ws/install/bin"
