9.c
---
##Open File  

###<u>Problems</u>

1. In a simple html ,browsing a file can be easily implemented using html tag  *`input type = "file"`* but this is not supported in android 2.2

1. The default location of external and saved files is sdcard . Apache server can handle the editor (through javascript) to bring a content in code editor but since we were working in chroot environment apache server can not access the files present in sdcard 
1.  Similarly ,android environment can access sdcard's file content but can't interact with javascript of APL (android 2.2 's another limitation passing argument to javascript function) to show it in code editor.  

###<u>Our Procedure</u>

1. We created folders *`var/www/html/c/code/`* , *`var/www/html/cpp/code/`* , *`var/www/html/python/code/`* , *`var/www/html/scilab/code/`* to hold all files to be browsed .Now javasript can read these files and show them up in code editor . This is implemented in corresponding js files( c.js ,cpp.js ,python.js ,scilab.js ) of all languages in function *`submit_file()`* 

---
<pre><code>
	var oRequest = new XMLHttpRequest();
	var sURL = "http://"+hostname+"/html/c/code/"+str[index-1];
	oRequest.open("GET",sURL,false);
	oRequest.setRequestHeader("User-Agent",navigator.userAgent);
	oRequest.send(null);
	if (oRequest.status==200)
	{
		myCodeMirror.setValue(oRequest.responseText);
	}
</pre></code>
---
this creates a XMLHttpRequest and oRequest.responseText holds the content(string) of the selected file.

		2.These folders are binded to sdcard/APL/c/code/ , sdcard/APL/cpp/code/ , sdcard/APL/python/code/ , sdcard/APL/scilab/code/. So whatever will be present in sdcard can be accessed by javascript now.  

		3. Initially function open_file() is called which calls the cgi-script .It creates a file /var/www/html/check.txt with list of filenames present in the selected code folders .And then it calls function list_file() which reads content of check.txt ,puts them in an array and create a browse list in html

---

		var oRequest = new XMLHttpRequest();
		var sURL = "http://"+hostname+"/html/check.txt";
		...
		...
		str=oRequest.responseText.split("\n");
		var sel;
		sel="<select style= \"color:rgb(0,0,0);\" onchange=\"submit_file()\" id=input_file><option>  Browse Files </option>";
		while(i!=str.length)
		{
		sel+="<option value = " +i+ ">" +str[i]+ "</option>";
		i++;
		}
		sel+="</select>";
		document.getElementById("open").innerHTML=sel;

---

###<u>Users Manual</u>

To open a file in the code editor of APL, you need to keep the file inside sdcard/APL/c/code/ or sdcard/APL/cpp/code/ or sdcard/APL/python/code/ or sdcard/APL/scilab/code/.  
Give it following extensions:-  

* .c for C files<br>
* .cpp for C++ files<br>
* .py for python files<br>
* .cde for scilab files<br>

now go to the application , click on menu and select *open file* option and easily browse through the list.