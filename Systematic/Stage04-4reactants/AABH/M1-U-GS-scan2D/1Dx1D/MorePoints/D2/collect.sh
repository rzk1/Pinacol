for (( i = 1; i < 11; ++i )); do r1=$( bc -l <<< "2.1045 - 0.11 *  ($i - 1)" ); awk -v var="$r1" '!/^#/ {print $1, var, $2} END {print ""}' AABH_"$i"_tot_ener.txt ; done

