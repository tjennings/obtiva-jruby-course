#!/bin/sh

# Try various jruby options and see how much performance
# you can get out of Rails
#
# Make sure you try: 
# 
# - The two JVM modes: --server, --client
# - Try running the script multiple times in --server mode
# - Tweaking JIT options, especially: 
#     jruby.compile.mode (off/force/on)
#     jruby.jit.threshold
#     jruby.jit.max
#
# - Make sure you have enough heap & permgen: 
#     -Xms<size>
#     -Xmx<size>
#     -XX:MaxPermSize

cd "../deploying_rails/hello_world"
script="script/rails server" 

export RAILS_ENV=production

# Here's a place to start:
#
# opts="-J-Djruby.jit.threshold=50
#       -J-Djruby.jit.max=5000
#       -J-Djruby.jit.logEvery=100
#
#       -J-verbose:gc
#       -J-XX:MaxPermSize=64m
#       -J-Xmx120m
#       -J-Xms40m"

jruby --server $opts $script 
