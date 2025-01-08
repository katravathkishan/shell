#!/bin/bash

MOVIES=$("PUSHP1" "PUSHP2" "RRR")#index start from 0

echo "first movie: $MOVIES[0]"
echo "SECOND movie: $MOVIES[1]"
echo "third movie: $MOVIES[2]"
echo "all movie: $MOVIES[@]"