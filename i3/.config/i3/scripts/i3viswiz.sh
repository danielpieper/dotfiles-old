#!/bin/bash

NAME="i3viswiz"
VERSION="0.011"
AUTHOR="budRich"
CONTACT='robstenklippa@gmail.com'
CREATED="2018-01-18"
UPDATED="2018-01-20"

main(){
  while getopts :vhg:p option; do
    case "${option}" in
      g) gapsz=${OPTARG} ;;
      p) printout=1 ;;
      v) printf '%s\n' \
           "$NAME - version: $VERSION" \
           "updated: $UPDATED by $AUTHOR"
         exit ;;
      h|*) printinfo && exit ;;
    esac
  done

  (($#==1)) && [[ $1 = '-p' ]] && shift $((--OPTIND))
  (($#>1)) && shift $((--OPTIND))

  gapsz=${gapsz:-5}
  dir="${1:0:1}"
  dir="${dir,,}"

  [[ ! $dir =~ u|d|l|r ]] && [[ -n $dir ]] \
    && printinfo && exit

  trgwin="$(listvisible)"

  [[ $printout = 1 ]] && echo -e "$trgwin"

  trgwin=$(echo -e "$trgwin" | head -1)

  if [[ $trgwin = floating ]] && [[ -n $dir ]]; then

    case $dir in
      l ) dir=left   ;;
      r ) dir=right  ;;
      u ) dir=left   ;;
      d ) dir=right  ;;
    esac

    i3-msg -q focus $dir

  else
    [[ ! $trgwin =~ ^[0-9]*$ ]] && [[ -n $dir ]] \
      && ((gapsz+=75)) && trgwin="$(listvisible | head -1)"

    [[ $trgwin =~ ^[0-9]*$ ]] && [[ -n $dir ]] \
      && i3-msg "[con_id=$trgwin]" focus
  fi
  
}

listvisible(){
  i3-msg -t get_tree \
           | awk -v gapsz=$gapsz -v dir=$dir -v RS=',' -F':' '

    function listvis(id,achld,curc,c,schld,curs,s,stackh) {
      stackh=0

      if(ac[id]["layout"]=="stacked"){
        split(ac[id]["childs"],schld," ")
        for (s in schld) {
          curs=schld[s]
          gsub("[^0-9]","",curs)
          if(curs==""){continue}
          stackh++
        }
        stackh--
      }

      if(ac[id]["layout"]~/tabbed|stacked/){
        ac[id]["childs"]=ac[id]["focused"]}

      split(ac[id]["childs"],achld," ")
      for (c in achld) {
        curc=achld[c]
        gsub("[^0-9]","",curc)
        if(curc==""){continue}
        if(ac[id]["layout"]=="stacked"){
          ac[curc]["h"]=ac[curc]["h"]+(ac[curc]["b"]*stackh)
          ac[curc]["y"]=ac[curc]["y"]-(ac[curc]["b"]*stackh)
        }
        if (ac[curc]["childs"]!="")
          listvis(curc)
        else if (ac[curc]["f"]!=1)
          avis[curc]=curc
      }
    }

    BEGIN{focs=0;end=0;csid="first";actfloat=""}

    ac[cid]["counter"]=="go" && $1=="\"nodes\"" && $2!="[]"{
      ac[cid]["counter"]=csid
      csid=cid
    }

    $1~"{\"id\"" || $2~"\"id\"" {cid=$NF}

    $1=="\"layout\""{clo=$2}

    $1=="\"type\"" && $2=="\"workspace\"" {wsdchk="1"}
    wsdchk=="1" && $1=="\"width\""  {dim["w"]=$2}
    wsdchk=="1" && $1=="\"height\"" {gsub("}","",$2);dim["h"]=$2;wsdchk="2"}
    wsdchk=="2" && $1=="\"num\"" {
      dim[$2]["w"]=dim["w"]
      dim[$2]["h"]=dim["h"]
      wsdchk="0"
    }

    $1=="\"num\"" {cws=$2;cwsid=cid}

    $1=="\"focused\"" && $2=="true" {
      act=cid
      aws=cws
      awsid=cwsid
    }

    $1=="\"window\"" && $2=="null" {
      gsub("[\"]","",clo)
      ac[cid]["layout"]=clo
      ac[cid]["counter"]="go"
      ac[cid]["focused"]="X"
    }

    $1=="\"window\"" && $2!="null" {
      ac[cid]["x"]=curx
      ac[cid]["y"]=cury
      ac[cid]["w"]=curw
      ac[cid]["h"]=curh
      ac[cid]["b"]=curb
    }

    $1=="\"rect\"" {curx=$3;rectw=1}
    rectw==1 && $1=="\"y\""{cury=$2}
    rectw==1 && $1=="\"width\""{curw=$2-1}
    rectw==1 && $1=="\"height\""{sub("}","",$2);curh=$2-1;rectw=2}

    $1=="\"deco_rect\"" {rectb=1}
    rectb==1 && $1=="\"height\""{
      sub("}","",$2)
      curh+=$2;cury-=$2
      curb=$2
      rectb=2
    }

    # if(curws=="-1"){WSF="chk"}

    $1=="\"floating\"" && $2~"_on" {
      if(cid==act){actfloat="floating"}
      ac[cid]["f"]=1
    }

    $1=="\"focus\"" && $2!="[]" {focs=1}
    focs=="1" && $NF~"[]]$"{end=1}
    focs=="1" {
      gsub("[]]|[[]","",$NF)
      if(ac[csid]["focused"]=="X"){ac[csid]["focused"]=$NF}

      ac[csid]["childs"]=$NF" "ac[csid]["childs"]
    }

    end=="1" {
      csid=ac[csid]["counter"]
      focs=0;end=0
    }

    END{
      # cleantree(awsid)
      # # getconts(awsid)
      # # painttree(awsid)

      listvis(awsid)
      
      if (dir=="r"){
        trgx=ac[act]["x"]+ac[act]["w"]+gapsz
        trgy=ac[act]["y"]+ac[act]["h"]/2
        if(trgx>dim[aws]["w"])
          trgx=gapsz
      }

      if (dir=="l"){
        trgx=ac[act]["x"]-gapsz
        trgy=ac[act]["y"]+ac[act]["h"]/2
        if(trgx<0)
          trgx=dim[aws]["w"]-gapsz
      }

      if (dir=="u"){
        trgx=ac[act]["x"]+ac[act]["w"]/2
        trgy=ac[act]["y"]-gapsz
        if(trgy<0)
          trgy=dim[aws]["h"]-gapsz
      }

      if (dir=="d"){
        trgx=ac[act]["x"]+ac[act]["w"]/2
        trgy=ac[act]["y"]+ac[act]["h"]+gapsz
        if(trgy>dim[aws]["h"])
          trgy=gapsz
      }

      trgx=int(trgx)
      trgy=int(trgy)

      if(actfloat==""){
        for (w in avis) {
          hit=0
          hity=0
          hitx=0
          xar=ac[w]["x"]+ac[w]["w"]
          if(trgx>=ac[w]["x"])
            if(xar>=trgx){++hitx;++hit}
          if(trgy>=ac[w]["y"] && trgy<=(ac[w]["y"]+ac[w]["h"]))
            {hity++;hit++}

          if(hit==2)
            {print w;break}

          
        }
      } 
      else
        print actfloat

      print "tx: " trgx " ty: " trgy
      for (w in avis) {
        if(w==act)
          printf "* "
        else
          printf "- "
        print w "\t" \
        "x: " ac[w]["x"] "\t" \
        "y: " ac[w]["y"] "\t" \
        "w: " ac[w]["w"] "\t" \
        "h: " ac[w]["h"] "\t" \
      }

    }
  '
}


printinfo(){
  case "$1" in
    m ) printf '%s' "${about}" ;;
    
    f ) 
      printf '%s' "${bouthead}"
      printf '%s' "${about}"
      printf '%s' "${boutfoot}"
    ;;

    ''|* ) 
      printf '%s' "${about}" | awk '
         BEGIN{ind=0}
         $0~/^```/{
           if(ind!="1"){ind="1"}
           else{ind="0"}
           print ""
         }
         $0!~/^```/{
           gsub("[`*]","",$0)
           if(ind=="1"){$0="   " $0}
           print $0
         }
       '
    ;;
  esac
}

bouthead="
${NAME^^} 1 ${CREATED} Linux \"User Manuals\"
=======================================

NAME
----
"

boutfoot="
AUTHOR
------

${AUTHOR} <${CONTACT}>
<https://budrich.github.io>

SEE ALSO
--------

bar(1), foo(5), xyzzy(1), [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
"

about='
`i3viswiz` - Professional window focus for i3wm

SYNOPSIS
--------

`i3viswiz` [`-v`|`-h`] [`-p`] [`-g` GAPSIZE] [*DIRECTION*]

DESCRIPTION
-----------

`i3viswiz` lists all visible windows with their positions (X,Y) and
dimensions (width,height). If `-p` flag is passed, the list will be
printed to `stdout`. If a *DIRECTION* (left|right|up|down) is passed
`i3wizvis` will shift the focus to the window closest in the given 
DIRECTION, or warp focus if there are no windows in the given direction.

OPTIONS
-------

`-v`  
  Show version and exit.

`-h`  
  Show help and exit.

`-p`  
  Print list of windows to `stdout`. The first line is either
  the *con_id* of the window receiving focus . The second line 
  are the x and y coordinates where receiving window is searched.
  Remaining lines are the list. The first field is marked with a 
  `*` if the line contains the active window. Second field is the 
  *con_id* of a visible window. Floating windows are excluded from
  the list. If the active window is floating, the first line will 
  have the text "floating".

  Example output:  

``` text
  $ i3paint -p -g 20 down
    94369749033328
    tx: 319.5 ty: 227
    - 94369749098704  x: 1349  y: 243  w: 125  h: 656  
    * 94369748807120  x: 0     y: 0    w: 639  h: 207  
    - 94369749033328  x: 0     y: 208  w: 1222 h: 691  
    - 94369748768416  x: 1223  y: 0    w: 376  h: 242  
    - 94369749326096  x: 640   y: 0    w: 582  h: 207  
    - 94369749166496  x: 1475  y: 243  w: 124  h: 656  
    - 94369749106512  x: 1223  y: 243  w: 125  h: 656
```

`-g` GAPSIZE
  Set GAPSIZE (defaults to 5). GAPSIZE is the distance in pixels
  from the current window where new focus will be searched.

*DIRECTION*
  Can be either (left|right|up|down) OR (l|r|u|d). DIRECTION needs
  to be the last argument of the command. If no DIRECTION is given,
  focus will not shift.

EXAMPLE
-------

replace the normal i3 focus keybindings with viswiz like this:
``` text
Normal binding:
bindsym Mod4+Shift+Left   focus left

Wizzy binding:
bindsym Mod4+Left   exec --no-startup-id i3viswiz l 
```
'

if [ "$1" = "md" ]; then
  printinfo m
  exit
elif [ "$1" = "man" ]; then
  printinfo f
  exit
else
  main "${@}"
fi