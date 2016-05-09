#!/bin/bash

CURL=`which curl`

#!/bin/sh
# POSIX

# Reset all variables that might be set
destination=
min=1
max=100
verbose=0 # Variables to be evaluated as shell arithmetic should be initialized to a default or validated beforehand.

while :; do
  case $1 in
    -h|-\?|--help)   # Call a "show_help" function to display a synopsis, then exit.
      printf "\n./examples/fizzbuzz_api_client.sh -d \"localhost:3000/api/v1/fizzbuzzapi\" -m 5 -M 10\n\n"

      printf " -d|--destination # Required \n"
      printf " -m|--min #Optional\n"
      printf " -M|--max #Optional\n"

      exit
      ;;
    -d|--destination)  
      if [ -n "$2" ]; then
        destination=$2
        printf 'INFO: "--destination"   %s\n' "$2"  >&1
        shift
      else
        printf 'ERROR: "--destination" requires a non-empty option argument.\n' >&2
        exit 1
      fi
      ;;
#get request, min/max/perpage
    -m|--min)  
      if [ -n "$2" ]; then
        min=$2
        shift
      fi
      ;;

    -M|--max)  
      if [ -n "$2" ]; then
        max=$2
        shift
      fi
      ;;
    
    -?*)
      printf 'WARN: Unknown option (ignored): %s\n' "$1" >&2
      ;;
    *)  # Default case: If no more options then break out of the loop.
      break
  esac
  shift
done


#?max=100&min=1
#./examples/fizzbuzz_api_client.sh -d "localhost:3000/api/v1/fizzbuzzapi"
$CURL -i -H "Accept: application/json" -H "Content-Type: application/json" "$destination/?max=$max&min=$min"