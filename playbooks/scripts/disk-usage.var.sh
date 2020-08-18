#du -ax --time /var 2> /dev/null | sort -n -r | grep -v kcore$ |  head -n 50 | awk '{ split( "KB MB GB" , v ); s=1; while( $1>1024 ){ $1/=1024; s++ } print $1 v[s] " " $2 "\t" $NF }'

#du -ax --time / 2> /dev/null | sort -n -r | grep -v kcore$ |  head -n 50 | awk '{ split( "KB MB GB" , v ); s=1; while( $1>1024 ){ $1/=1024; s++ } printf "%7.3f%s %-10s %s\n", $1, v[s], $2, $NF }'

du -ax --time /var 2> /dev/null | sort -n -r | grep -v kcore$ | head -n 50 | sort -k4 | awk '{ split( "KB MB GB" , v ); s=1; while( $1>1024 ){ $1/=1024; s++ } printf "%7.3f%s %-10s %s\n", $1, v[s], $2, $NF }'
