# file name: print_arguments.sh
# this program will notify if no arguments are provided, else it will get run_args.py and 
# write each given argument into print(<argument>) into python file and then execute

if [ $# -eq 0 ]
then 
    echo "No arguments provided"
    exit 
fi

for arg in "$@"; do
  echo "print('$arg')" >> run_args.py
done
execution="$(python3 run_args.py)"
echo "execution result: $execution"
