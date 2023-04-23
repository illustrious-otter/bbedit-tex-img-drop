# bbedit-tex-img-drop

BBEdit > 14 provides a hook into dragged image events - this script will change the behaviour for .tex files and create something along the lines of:

```
\begin{figure}[H]
  \centering
  \includegraphics[width=<#SCALE#>\linewidth]{../../../foo/bar/baz.png}
  \caption{<#CAPTION#>}
  \label{foo_bar_baz}
\end{figure}
```

for every dragged image.  Paths are relative to the .tex file

Copy the script `Document.documentWillInsertTextForDroppedImageFile.scpt` to `~/Library/Application Support/BBEdit/Attachment Scripts` (or wherever else your installation keeps BBEdit's `Application Support` directory).  If you don't have the `Attachment Scripts` directory, create it.

Tested on OSX 10.15.7 but will most likely work a long way backwars and forwards of that.
