start=$(date +%s.%N)
echo "start time:   $start"

sleep 3

end=$(date +%s.%N)
echo "end time:     $end"

# calculate duration
runtime="$(printf %.2f $(echo "$end-$start" | bc -l))"

echo "time elapsed: $runtime"
