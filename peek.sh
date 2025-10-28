
working_file="$1";
head -n 3 "$working_file" > output;
echo "..." >> output;
tail -n 3 "$working_file" >> output;
cat output

