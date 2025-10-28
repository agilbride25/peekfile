
working_file="$1"; number_of_lines="$2";
head -n "$number_of_lines" "$working_file" > output;
echo "..." >> output;
tail -n "$number_of_lines" "$working_file" >> output;
cat output
