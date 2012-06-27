<b>Save Code and Save Image</b>

<b>A. Save Code<b> 

To save the code written in any language:-<br>
1)Click options button. A menu will appear.<br>
2)Click on "Save".<br>
3)Enter only the file's name in the box (without extention).<br>
4)It will display the path of saved file, if the file is successfully saved.

To view your saved code outside the application, open it from the following path:-

The code gets saved in:-<br>
1) SdCard/APL/c/code/ - For C code.<br>
2) SdCard/APL/cpp/code/ - For C++ code.<br>
3) SdCard/APL/python/code/ - For Python code.<br>
4) SdCard/APL/scilab/code/ - For Scilab code.<br>
5) SdCard/APL/scilab/image/ - For Scilab image.

Note:- Even if no SdCard is present, you can still save your code. It gets saved in internal memory but you can view the code only by opening the application. To view your saved file click on "Browse files" option in options menu inside application. The file will open in application's text editor.

<b>Implementation:-</b>

C Language:-

(Same is valid for other languages, replacing c with cpp, python, scilab in the paths, if not specified otherwise)

When we click on "Save" button, savecode() (javascript function) gets called, present in /var/www/html/c/c.js.

<code>
function savecode()<br>
{<br>
	document.getElementById('options-wrapper').style.display='none';<br>
	filename1=prompt("Enter the name of the code file to be saved: ","new_file");	<br>
	if(!filename1.equal("null"))<br>
	{<br>
		flag_save1=1;<br>
		setQueryString();<br>
		var url="http://"+hostname+"/cgi-bin/c.cgi";<br>
		httpRequest("POST",url,true);<br>
		alert("File saved to SdCard/APL/c/code/"+filename1);<br>
	}	<br>
}</code>

It calls the cgi-script /usr/lib/cgi-bin/c.cgi and passes following variables:-

1)flag_save1- To tell the cgi not to execute the code present in text-editor. It only takes the contents of text-editor and saves it.

2)filename1- It passes the file's name entered by user so that the file gets saved with the user provided name.

3)code- contents of text-editor.

4)check- "see Browse file".

When c.cgi script gets called, a new file is created with name 1.c in /tmp/ folder. This file gets copied to /tmp/csave/ with user provided name. 

(Files of all languages are created in /tmp/ with names 1.cpp, 1.py, 1.cde for C++, Python, Scilab respectively. The previous files get replaced. Files in /tmp/ get copied to /tmp/cpsave/, /tmp/pysave/, /tmp/scisave/ for C++, Python, Scilab respectively)

<code>
if($flag_save1==1)<br>
{<br>
	system("/bin/cp /tmp/1.c /tmp/csave/$filename1.c");<br>
}</code>

This copying of files take place for various reasons. Codes of different languages gets saved in similar fashion in /tmp/. We need a different folder /tmp/csave/, since in the next step we "rsync" the new file just created to a different folder. So to distinguish between new files of different languages we have to copy it to different folder. The command is anyways needed to change the filename with user provided name.

Note:- rsync is a command tool which runs in background for every n seconds specified and looks for new files in a folder. If a new file is created than it copies it from this folder to another folder. However it does not delete any file from later folder if it gets deleted from former folder.

Once the file is copied to /tmp/csave/filename1.c, this file gets copied to /var/www/html/c/code/. The later folder is binded with /mnt/sdcard/APL/c/code/. Since the two folders are binded all the files which gets into /var/www/html/c/code/ due to rsync can now be seen in /mnt/sdcard/APL/c/code/ due to binding. If you delete any file from /mnt/sdcard/APL/c/code/, it will automatically get deleted from /var/www/html/c/code/.

Now you might be thinking that we could have directly rsync /tmp/csave/ to /mnt/sdcard/APL/c/code/. The answer to why we went the longer way is that when there is a need to open the saved file in application, we cannot do it directly by specifying the path /mnt/sdcard/APL/c/code/ as we are working inside chroot environment and apache doesnt have the permission to access outside chroot. So we binded the two folders 
/var/www/html/c/code/ and /mnt/sdcard/APL/c/code/.

Note:- When we bind these two folders the permission of /var/www/html/c/code/ gets changed from www-data to that of /mnt/sdcard/APL/c/code/ and we are no longer able to write inside this folder directly from inside chroot.

<b>B. Save Figure in scilab</b>

1) Click on "Save Image" button on left and top of image in scilab.<br> 2) Write name of image (without extension) in the prompt box.<br>
3) It will display the path of saved image which is Sdcard/APL/scilab/image/image_name, if the file is successfully saved.

<b>Implementation:-<b>

When we click on "Save Image" button, saveImg() function in /var/www/html/scilab/scilab.js gets called.

<code>
function saveImg()<br>
{<br>
	filename=prompt("Enter the name of the image to be saved: ","new_image");	
if(!filename.equals("null"))<br>
{<br>
	flag_save=1;<br>
	setQueryString();<br>
	var url="http://"+hostname+"/cgi-bin/scilab.cgi";<br>
	httpRequest("POST",url,true);<br>
	alert("Image saved to SdCard/APL/scilab/image/"+filename);<br>
}<br>
}
</code>

The function calls /usr/lib/cgi-bin/scilab.cgi in the same way as savecode() and passes following parameters:-<br>
1)filename:- Image name entered by user.
2)flag_save:- Flag to tell the cgi not to execute the code but save the only image present in /var/www/html/scilab/tmp/1.gif.

When you execute the code, the image gets created in /var/www/html/scilab/tmp/ with name 1.gif overwriting previous 1.gif file so that at a time only one file is present inside tmp folder. When we press save image button, the cgi script takes this file and copies into /tmp/scisaveimg/ with the name provided by user.

if($flag_save)<br>
{<br>
	system("/bin/cp /var/www/html/scilab/tmp/1.gif /tmp/scisaveimg/$filename.gif");<br>
}

This /tmp/scisaveimg/ is in rsync with /var/www/html/scilab/image/. The later folder is binded with /mnt/sdcard/APL/scilab/image/ so that the user can view the images from sdcard.

The purpose of rsync and binding has been explained in Save Code section.