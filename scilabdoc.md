6.c  
---


## Replacing the Textarea for input with CodeMirror 2

As now we had extended our project to multiple languages namely C , C++     and Python providing just a textarea to the user for writing his code was not appreciable .Thus we decided to replace it with an editor with some more functionalities to provide the user a comfortable environment to code . The editor we used was _CodeMirror2_ .

###<u>**CodeMirror2**</u>

CodeMirror is a JavaScript component that provides a code editor in the browser. Its library provides only the editor component, no accompanying buttons, auto-completion, or other IDE functionality though it does provide a rich API on top of which such functionality can be straightforwardly implemented.This was just that what we needed.
 
To use CodeMirror load the script and style sheet found under lib/ in the distribution, plus a mode script from one of the mode/ directories and a theme stylesheet from theme. For example:<br>

		<script src="lib/codemirror.js"></script>
		<link rel="stylesheet" href="../lib/codemirror.css">
		<script src="mode/javascript/javascript.js"></script>



Having done this, an editor instance can be created like this

        var myCodeMirror = CodeMirror(document.body);

The editor will be appended to the document body, will start empty, and will use the mode and theme that we loaded. The configuration object can be passed to CodeMirror as a second argument:

<pre><code>
	var myCodeMirror = CodeMirror(document.body, {
  	value: "function myScript(){return 100;}\n",
  	mode:  "javascript"
	});
</code></pre>

There are much more configuration options available with CodeMirror ,for detailed information visit the link [http://codemirror.net/doc/manual.html](http://codemirror.net/doc/manual.html)

###<u>**Features implemented in APL Editor**
</u>

* **Syntax Highlighting**  
 for C, C++, Python, Scilab
* **Line Number**  
Show line numbers to the left of the editor.
* **Matching Brackets**  
Determines whether brackets are matched whenever the cursor is moved next to a bracket.
* **Theme**  
Various themes to style the editor with.


<pre><code>
	var myCodeMirror = CodeMirror(document.getElementById("code"),
	{
	lineNumbers: true,
	matchBrackets: true,
	mode:  "text/x-csrc",
	theme:"cobalt",
	lineWrapping: true
	});
</code></pre>


###**<u>CodeMirror functions used</u>**  

* **CodeMirror(DOM object)**  
    Create an instance of Codemirror.
* **getValue() → string**  
    Get the current editor content.
* **setValue(string)**  
    Set the editor content.
* **setOption(option, value)**  
    Change the configuration of the editor. option is the name of an option, and value should be a valid value for that option.







                    

                    




