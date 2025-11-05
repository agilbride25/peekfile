
working_file="$1"; number_of_lines="$2";

if [[ -n "$number_of_lines" ]]; then
	head -n "$number_of_lines" "$working_file" > output;
	echo "..." >> output;
	tail -n "$number_of_lines" "$working_file" >> output;
	cat output;
elif [[ $(wc -l < "$working_file") -le $((2 * number_of_lines)) ]]; then
	echo "Warning, file has at most double the amount of lines requested";
	head -n "$number_of_lines" "$working_file" > output;
	echo "..." >> output;
	tail -n "$number_of_lines" "$working_file" >> output;
	cat output;
else
	head -n 3 "$working_file" > output;
	echo "..." >> output;
	tail -n 3 "$working_file" >> output;
	cat output;
fi
