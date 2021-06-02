for i in {0..10}
do
cat /dev/urandom | base64 | tr -dc '0-9a-zA-Z' | head -c500 > random.txt
git add random.txt
git commit -m "Generated commit #${i}"
done
git push
