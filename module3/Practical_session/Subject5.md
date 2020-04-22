# Suject 5: Analysis of the dialogs in "L'avare" of Molière

 __Prerequisite__ : text analysis, possibly data visualization techniques

The Observatory of Literary Life ([OBVIL](http://obvil.sorbonne-universite.site/obvil/presentation)) promotes a digital approach to literary text analysis.
As part of the [Molière Project](http://obvil.sorbonne-universite.site/projets/projet-moliere), plays of this author have been digitized and are freely accessible in various formats that can be used by a computer program.   
For the play "L'avare" ("The Miser") by Molière, here are the formats available: [TEI](http://dramacode.github.io/moliere/moliere_avare.xml), [epub](http://dramacode.github.io/epub/moliere_avare.epub), [kindle](kindle/moliere_avare.mobi), [markdown](http://dramacode.github.io/markdown/moliere_avare.txt), [iramuteq text](http://dramacode.github.io/iramuteq/moliere_avare.txt ), [Spoken Text / Lyrics](http://dramacode.github.io/naked/moliere_avare.txt), [TXM](http://dramacode.github.io/txm/moliere_avare.xml), [full html with table of contents](http://dramacode.github.io/html/moliere_avare.html), [fragment html](http://dramacode.github.io/article/moliere_avare.html).

Note that this is the original French version of the play, not an English translation. It is not necessary to understand the play to do this exercise, though it probably helps. You can find [an English summary on Wikipedia](https://en.wikipedia.org/wiki/The_Miser), and [a full English translation on Project Gutenberg](https://www.gutenberg.org/ebooks/6923).

Using these digital editions, it is possible to write programs that perform syntactic and semantic analyses. We propose to reproduce a study carried out by the OBVIL on the dialogues of « L’avare ».

We advise you to do this exercise in Python rather than R, especially for the part that deals with the text.

__Your mission, should you choose to accept it:__

1. Classify the characters according to their amount of speech using a syntactic analysis of the text (scenes / lines / words). In particular, which character speaks the most? Which one does not speak at all? Note that the names of the characters are not necessarily uniform, case and the presence of accents may vary, for example.
2. Make a graph that shows the number of words each actor says in each scene. You can get inspiration for this from the [study of "L’avare" carried out by OBVIL](https://obvil.sorbonne-universite.fr/corpus/moliere/moliere_avare) (left graph). In this graph, the lines are of equal length and the height represents the total number of words spoken in the scene. The width of each rectangle indicates the percentage of the scene that an actor occupies.  
3. Optional: Construct an interlocution graph to visualize the exchanges between the characters. To do this, you can draw inspiration from the [study of "L’avare" carried out by OBVIL](https://obvil.sorbonne-universite.fr/corpus/moliere/moliere_avare) (right graph).
4. Submit your work in FUN
