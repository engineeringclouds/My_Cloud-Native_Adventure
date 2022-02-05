### Key Commands

See below for key commands to be familar with as you get to grips with Linux.

* **man:** One of the most important things to know when learning a new operating system is how to access information on the various commands. The 'man' command shows the reference manual for specific commands. It usually contains a description, syntax, and examples. It's a great place to start when using a command for the first time.
* **ls:** Use 'ls' to list directory contents. Use 'man ls' to get more information.
* **cat:** Use 'cat' to concatenate files and, also, to print the contents of file in the terminal. Use 'man cat' to get more information.
* **cd:** Use 'cd' to change your current working directory.
* **whoami:** Use 'whoami' to show details on the currently logged in user. Use 'man whoami' to get more information.
* **hostname:** Use 'hostname' to show system hostname. Use 'man hostname' to get more information.
* **pwd:** Use 'pwd' to print name of current working directory. Use 'man pwd' to get more information.
* **systemctl:** Use 'systemctl' to control the systemd system and service manager. Use 'man systemctl' to get more information.
* **touch:** Use 'touch' to change timestamps on a file. However it's most common use is to create a new empty file. For example 'touch file.md' will create a new file called file.md if one doesn't already exist. Use 'man touch' to get more information.
* **mkdir:** Use 'mkdir' to create new directories. Use 'man mkdir' to get more information.
* **rmdir:** Use 'rmdir' to remove empty directories. Use 'man rmdir' to get more information.
* **rm:** Use 'rm' to remove files and/or directories. Use 'man rm' to get more information.
* **cp:** Use 'cp' to copy files and directories. User 'man cp' to get more information.
* **mv:** Use 'mv' to move or rename files and directories. User 'man mv' to get more information.
* **grep:** Use 'grep' to search for patterns. This is a very useful utility when you get to know it. Use 'man grep' to get more information.
 * **sudo:** Use 'sudo' to execute a command as the superuser or as another user. Use 'man sudo' to get more information.
* **tree:** Tree is a very useful command. You can use it to print the directory tree, recursively, from your current working directory. Use 'tree' to list files and directories, 'tree -a' to include hidden objects, and 'tree -d' to list only directories. Use 'man tree' to get more information.
* **less:** The 'less' command allows you to display a file, one screen at a time. Very useful when dealing with large files. Use 'space' to scroll foward through through the file. Use 'man less' to get more information.
* **tail:** Use the 'tail' command to print the last 10 lines of a file to the screen. You can use the '-n' switch to change the number of lines printed. Use 'man tail' for more information.
* **head:** Pretty much the exact opposite of the 'tail' command. As above, use '-n' to change the number of lines printed. Use 'man head' for more information.
* **diff:** The 'diff' command can be used to compare two files. Use 'man diff' for details.
* **locate:** The 'locate' command helps find files by consulting system databases. Note: these databases aren't updated real time, so any recent file additions or removals won't show in the results. Use 'man locate' to get more information.
* **find:** The 'find' command is another search utility. Unlike the 'locate' command, 'find' searches in the directory hierarchy for your search terms. Use 'man find' for details. 
* **rsync:** Use the 'rsync' command for fast file copying from one location to another. It can even handle remote locations. Use 'man rsync' for more details.
* **File compression utilities:** As in Windows, there are many file compression utilities to choose from on Linux. There are pros and cons of each which I won't explore here. Check out the man pages for details.
  * **gzip:** Check out 'man gzip' for details.
  * **bzip2:** Check out 'man bzip2' for details.
  * **xz:** Check out 'man xz' for details.
* **tar:** 'tar' is an archiving utility used to group files into an archive. It's often used with one of the above compression utilities to archive and compress a group of files into a single compressed archive. Use 'man tar' for details.
* **dd:** 'dd' is another copy utility, only this time we are dealing with hardware devices such as disks. Use 'man dd' for details.
