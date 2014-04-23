Theoretical Physics Checklists
===

These checklists maintain the scientific computing environment of the Theoretical Physics group at Swinburne University of Technology.  We use this environment to run phase space simulatons of quantum dynamics.  The lists describe two types of procedures, bacukup and restore.  Restore creates the environment from scratch, while backup uploads data to the cloud in order that the restore process can do that.

Much scientific software is maintained by amateurs, and a working scientific computing system is a fast-moving target.  Therefore the restore checklists are usually out of date, and you will need to modify some steps to sucessfully run them.  The steps that give you copies of the lists and a web browser should be reliable; please update the lists as you go, and push them to github when you're done.


Which list to run
---

You should run the [Backup Checklist](backup.md) whenever you have done work you don't want to lose.

Run the [Upgrade Checklist](upgrade.md) to install a fresh version of OSX on your terminal.  If you have a new computer with OSX installed, just run the [Restore Terminal Checklist].

If you use a system other than OSX, you will need to modify these lists extensively.  They might provide a useful reference for such things as the IP addresses of printers and the set of Python packages to install.


Maintaining the checklists
---

The lists are held in a Git repository, with several branches.  The master branch is intended to contain generic checklists, with steps that almost everyone will follow.  It does not mention things such as text editors and web browsers, so you should create a branch that includes steps to install the ones you like.  We suggest the name of this branch should be your login.  You should merge the default branch into it before you run any list.

The /etc directory has copies of some elusive configuration files.  These are described in the checklists at the point they are installed.  Consider adding obscure and generally useful files that you download.
