i = $1
factors = ()
k = 2
while((k * k<= i)); do
    if ((i % k == 0)); then
        factors+=("$k")
        ((i /=p))
    else
        ((k +=(k == 2 ? 1 :2)))
    fi
    done
    ((i > 1)) && factors+=("$i")
    echo "${factors[*]}"