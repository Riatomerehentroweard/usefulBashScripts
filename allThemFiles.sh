echo "Here you have all the file in the current direcotry:"
for f in ./*; do
    echo $f
done

printf "
And now all the files in a subfolder:
"
for f in ./allThemFiles/*; do
    echo $f
done

printf "
And now just the doc files:
"

for f in ./allThemFiles/*.doc; do
    echo $f
done

printf "
Now let's move some files. Currently these files are in cup a:
"

for f in ./allThemFiles/cup_a/*; do
    echo $f
done

printf "
Cup b has the following files:
"

for f in ./allThemFiles/cup_b/*; do
    echo $f
done

printf "
moving all the files from a to b.
"

for f in ./allThemFiles/cup_a/*; do
    mv $f allThemFiles/cup_b
done

printf "
Cup b has the following files:
"

for f in ./allThemFiles/cup_b/*; do
    echo $f
done

printf "
moving all the files back.
"
for f in ./allThemFiles/cup_b/*; do
    mv $f allThemFiles/cup_a
done