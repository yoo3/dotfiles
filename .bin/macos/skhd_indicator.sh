#!/usr/bin/env bash

function default() {
  sketchybar -m --set modal icon.color=0xFF0a0a0a
  sketchybar -m --set modal icon=""
}

function window() {
  sketchybar -m --set modal icon.color=0xFF0fd429
  sketchybar -m --set modal icon="WINDOW"
}

function resize() {
  sketchybar -m --set modal icon.color=0xFFd40fc0
  sketchybar -m --set modal icon="RESIZE"
}

function display() {
  sketchybar -m --set modal icon.color=0xFF09baeb
  sketchybar -m --set modal icon="DISPLAY"
}

function grid() {
  sketchybar -m --set modal icon.color=0xFFeb0924
  sketchybar -m --set modal icon="GRID"
}

case "$1" in
  default)
    default
    ;;
  window)
    window
    ;;
  resize)
    resize
    ;;
  display)
    display
    ;;
  grid)
    grid
    ;;
esac

