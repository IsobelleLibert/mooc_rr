jupyter-nbconvert --to notebook --execute notebook.ipynb --output notebook.nbconvert.ipynb

compare_notebooks() {
    OLD=$1
    NEW=$2
    mkdir -p `dirname sed/$1`
    mkdir -p `dirname sed/$2`
    echo "======= Comparing to $OLD ======="
    sed -e "s/Date:.*Deviance:/Deviance/" -e "s/Time:.*Pearson/Pearson/" $1 > sed/$1
    sed -e "s/Date:.*Deviance:/Deviance/" -e "s/Time:.*Pearson/Pearson/" $2 > sed/$2
    # Test #1   (--ignore-matching-lines="image/png" )
    diff -w --ignore-matching-lines="nbformat_minor" \
         --ignore-matching-lines="hidePrompt" \
         --ignore-matching-lines="scrolled" \
         --ignore-matching-lines="No. Iterations:" \
         --ignore-matching-lines="Covariance Type:" \
	 sed/$1 sed/$2 # | sed 's/^/>/'
    CMP_RES=$?
    echo "======= End of Comparison ======="
    rm sed/$1 sed/$2
    return $CMP_RES
}

compare_notebooks correct_output/notebook_orig.ipynb notebook.nbconvert.ipynb
CMP1=$?
compare_notebooks correct_output/notebook_844815ed865e.ipynb notebook.nbconvert.ipynb
CMP2=$?

if [ $CMP1 -eq "0" -o $CMP2 -eq "0" ] ; then
    echo "Test succeeded";
    return 0;
else
    echo "Test failed";
    return 1;
fi
