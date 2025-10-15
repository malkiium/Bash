#!/bin/bash

h=0
min=0
sec=0
rest=0

let h=$1/3600
let rest=$1%3600

let min=$rest/60

let sec=$rest%60

echo -e "$h h $min m $sec s"