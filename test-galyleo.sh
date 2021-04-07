echo "Geting Galyleo tests"
source tests.sh
for i in `seq -w 0 "$(( ${#test_names[@]} - 1))" `; do
    this_test=test
    eval $this_test="test$i"
    echo $test
    echo $i
    echo "${logins[$i]}"
    url="$(ssh ${logins[$i]} ${!test} | tail -n 1)"
    status_code="$(curl -s -o /dev/null -w "%{http_code}" $url)"
    if [[ $status_code != 200 ]]; then
        echo -e "\e[31mFailed ${test_names[$i]}\e[0m"
    else
        echo -e "\e[32mPassed ${test_names[$i]}\e[0m"
    fi
done
