# bbedit-tex-img-drop

BBEdit allows a hook into dragged image events - this script will change the behaviour for .tex files and create something along the lines of:

```
\begin{figure}[H]
  \centering
  \includegraphics[width=<#SCALE#>\linewidth]{../../../foo/bar/baz.png}
  \caption{<#CAPTION#>}
  \label{foo_bar_baz}
\end{figure}
```

for every dragged image.  Paths are relative to the .tex file

Create a directory `Attachment Scripts` in BBEdit's `Application Support` directory (if you don't have one already) and place the script in there.

Tested on OSX 10.15.7 but it is very vanilla so will likely work a long way backwars and forwards of that.
