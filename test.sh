# declaration var
test="hello"
test2="Coucou"
test3=" 12345 "
varNum=6
varNum2=4

# concat
varConc=$test$test2
varConc+=$test3

# console
echo $varConc

result=$(($varNum * $varNum2))
echo $result
