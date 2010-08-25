# Mentions

Simple linkups for mentions (words that start with "@", like Twitter replies)

# Usage

    >> include Mentions

    >> linkup("@Johnny Lorem ipsum dolor sit amet, consectetur adipisicing elit", '/users/\1', '_blank')
    => "@<a href='/users/johnny' target='_blank'>johnny</a> Lorem ipsum dolor sit amet, consectetur adipisicing elit"  

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
