# Subject 6: Around Simpson's Paradox

 __Prérequis__ : Averaging and ratio calculation, simple graphical presentation techniques, possibly logistic regression

<!-- In 1972-1974 a one-in-six survey of the electoral roll, largely -->
<!-- concerned with thyroid disease and heart disease, was carried out in -->
<!-- Whickham, a mixed urban and rural district near Newcastle upon Tyne, -->
<!-- United Kingdom (Tunbridge et al. 1977). Twenty years later a follow-up -->
<!-- study was conducted (Vanderpump et al. 1995). Some of the results deal -->
<!-- with smoking habits and whether or not the individual survived until -->
<!-- the second survey. For the sake of simplicity we have restricted -->
<!-- ourselves to women, and within them to the 1,314 who were classified -->
<!-- either as current smokers or as never having smoked; there were -->
<!-- relatively few women at the first survey (162) who had smoked but -->
<!-- stopped, and only 18 whose smoking habits were not recorded. The -->
<!-- 20-year survival status was determined for all the women in the -->
<!-- original survey. -->


In 1972-1974, in Whickham, a town in the north-east of England,
located approximately 6.5 kilometres south-west of Newcastle upon Tyne,
a survey of one-sixth of the electorate was conducted in order to inform
work on thyroid and heart disease (Tunbridge and
al. 1977). A continuation of this study was carried out twenty years later.
(Vanderpump et al. 1995). Some of the results were related to
smoking and whether individuals were still alive at the time of the
second study. For the purpose of simplicity, we will restrict the data to women and among these to the 1314 that were categorized as "smoking currently" or "never smoked". There were relatively few
women in the initial survey who smoked but have since quit
(162) and very few for which information was not available
(18). Survival at 20 years was determined for all women of the first survey.

All these data are available in this [file
CSV](file:Subject6_smoking.csv). You will find on each line if the
person smokes or not, whether alive or dead at the time of the
second study, and his age at the time of the first survey. 

This exercise can be done in either R or Python.

__Your mission, should you choose to accept it:__

1. Tabulate the total number of women alive and dead over the period according to their smoking habits. Calculate in each group (smoking/non-smoking) the mortality rate (the ratio of the number of women who died in a group to the total number of women in that group). You can graph these data and calculate confidence intervals if you wish. Why is this result surprising?
2. Go back to question 1 (numbers and mortality rates) and add a new category related to the age group. For example, the following classes will be considered: 18-34 years, 34-54 years, 55-64 years, over 65 years.

   Why is this result surprising? Can you explain this paradox? Similarly, you may wish to provide a graphical representation of the data to support your explanations.
3. In order to avoid a bias induced by arbitrary and non-regular age groupings, it is possible to try to perform a logistic regression. If we introduce a `Death` variable of `1` or `0` to indicate whether the individual died during the 20-year period, we can study the `Death ~ Age` model to study the probability of death as a function of age according to whether one considers the group of smokers or non-smokers. Do these regressions allow you to conclude or not on the harmfulness of smoking?  You will be able to propose a graphical representation of these regressions (without omitting the regions of confidence).
4. DépoSubmit your work in FUN
