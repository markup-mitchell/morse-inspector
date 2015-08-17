  1 #!/bin/bash
  2 
  3 # declare array and assign values to each letter 
  4 # make sure no spaced between array var, = and (
  5 declare -A morseCode_arr=( [a]=01 [b]=1000 [c]=1010 [d]=100 [e]=0 [f]=0010 [g]=110 [h]=0000 [i]=00 [j]=0111 [k]=101 [l]=0100 [m]=11 [n]=10 [o]=111 [p]=0110 [q]=1101 [r]=010  [s]=000 [t]=1 [u]=001 [v]=0001 [w]=011 [x]=1001 [y]=1011 [z]=1100 )
  6 
  7 echo 'Input string'
  8 read user_input
  9 
 10 # echo ${morseCode_arr[${user_input}]} # for deletion
 11 
 12 for (( s=0; s<${#user_input}; s++ )); do
 13         binary_output=${morseCode_arr[${user_input:$s:1}]}
 14         echo ${binary_output} 
 15                 for (( i=0; i<${#binary_output}; i++ )); do
 16                 if [[ ${binary_output:$i:1} == 1 ]]
 17                         then beep -l 300 -D 50
 18                 elif [[ ${binary_output:$i:1} == 0 ]]
 19                         then beep -l 150 -D 50
 20                 else echo "${binary_output:$i:1} is not an acceptable character"
 21                 fi
 22         done
 23         sleep .225
 24 done
