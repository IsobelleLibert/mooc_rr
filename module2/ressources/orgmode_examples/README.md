Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   [Examples from the Video](#examples-from-the-video)
-   [Other examples](#other-examples)

Examples from the Video
=======================

In the MOOC video, I quickly demo how org-mode can be used in various contexts. Here are the (sometimes trimmed) corresponding org-files. These documents depend on many other external data files and are not meant to lead to reproducible documents but it will give you an idea of how it can be organized:

1.  [journal.org](journal.org): an excerpt (I've only left a few code samples and links to some resources on R, Stats, ...) from my own journal. This is a personal document where everything (meeting notes, hacking, random thoughts, ...) goes by default. Entries are created with the `C-c c` shortcut.
2.  [labbook<sub>single</sub>.org](labbook_single.org): this is an excerpt from the laboratory notebook [Tom Cornebize](https://cornebize.net/) wrote during his Master thesis internship under my supervision. This a personal labbook. I consider this notebook to be excellent and was the ideal level of details for us to communicate without any ambiguity and for him to move forward with confidence.
3.  [paper.org](paper.org): this is an ongoing paper based on the previous labbook of Tom Cornebize. As such it is not reproducible as there are hardcoded paths and uncleaned dependencies but writing it from the labbook was super easy as we just had to cut and paste the parts we needed. What may be interesting is the organization and the org tricks to export to the right LaTeX style. As you may notice, in the end of the document, there is a commented section with emacs commands that are automatically executed when opening the file. It is an effective way to depend less on the `.emacs/init.el` which is generally customized by everyone.
4.  [labbook<sub>several</sub>.org](labbook_several.org): this is a labbook for a specific project shared by several persons. As a consequence it starts with information about installation, common scripts, has section with notes about all our meetings, a section with information about experiments and an other one about analysis. Entries could have been labeled by who wrote them but there were only a few of us and this information was available in git so we did not bother. In such labbook, it is common to find annotations indicating that such experiment was `:FLAWED:` as it had some issues.
5.  [technical<sub>report</sub>.org](technical_report.org): this is a short technical document I wrote after a colleague sent me a PDF describing an experiment he was conducting and asked me about how reproducible I felt it was. It turned out I had to cut and paste the C code from the PDF, then remove all the line numbers and fix syntax, etc. Obviously I got quite different performance results but writing everything in org-mode made it very easy to generate both HTML and PDF and to explicitly explain how the measurements were done.

Other examples
==============

Here are a few links to other kind of examples:

-   Slides: all my slides for a series of lectures is available here: <https://github.com/alegrand/SMPE>. Here is a [typical source](https://raw.githubusercontent.com/alegrand/SMPE/master/lectures/lecture_central_limit_theorem.org) and the [resulting PDF](https://raw.githubusercontent.com/alegrand/SMPE/master/lectures/lecture_central_limit_theorem.pdf)
-   Lucas Schnorr, a colleague, maintains:
    -   a set of templates for various computer science journals/conferences: [IEEE](https://github.com/schnorr/ieeeorg), [Wiley](https://github.com/schnorr/wileyorg), [ACM](https://github.com/schnorr/acmorg), [LNCS](https://github.com/schnorr/llncsorg)
    -   his lecture on programming languages for undergrads: <https://github.com/schnorr/mlp/tree/master/conteudo>
-   John Kitchin is an expert org-mode user and he maintains a very interesting [blog with many interesting tips](http://kitchingroup.cheme.cmu.edu/blog/). You may want to check this [seminar he gave at SciPy](https://www.youtube.com/watch?v=IsSMs-4GlT8&list=FLQp2VLAOlvq142YN3JO3y8w&app=desktop).

