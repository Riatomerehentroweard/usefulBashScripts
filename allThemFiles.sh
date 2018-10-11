echo "Here you have all the files:"
for f in ./allThemFiles/*; do
    echo $f
done

printf "
And now just the doc files:
"

for f in ./allThemFiles/*.doc; do
    echo $f
done