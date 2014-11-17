./dineroIV  -l1-usize 1024k -l1-ubsize 32 -l1-uassoc 1 < pinatrace.txt > 1way.result 
./dineroIV  -l1-usize 1024k -l1-ubsize 32 -l1-uassoc 2 < pinatrace.txt > 2way.result 
./dineroIV  -l1-usize 1024k -l1-ubsize 32 -l1-uassoc 4 < pinatrace.txt > 4way.result 
./dineroIV  -l1-usize 1024k -l1-ubsize 32 -l1-uassoc 8 < pinatrace.txt > 8way.result

grep Metrics ./1way.result 
grep "Demand miss rate" ./1way.result 
grep "Demand miss rate" ./2way.result 
grep "Demand miss rate" ./4way.result 
grep "Demand miss rate" ./8way.result 

