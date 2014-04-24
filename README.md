Theoretical Physics Checklists
===

These checklists maintain the scientific computing environment of the Theoretical Physics group at Swinburne University of Technology.  We use this environment to run phase space simulations of quantum dynamics.  The lists describe two types of procedures, backup and restore.  Restore creates the environment from scratch, while backup uploads data to the cloud in order that the restore process can do that.

Much scientific software is maintained by amateurs.  Therefore a working scientific computing system is a fast-moving target, and the restore checklists are usually out of date: you will need to modify some steps to sucessfully run them.  The initial steps, which give you copies of the lists, should be reliable.


Which list to follow
---

You should run the [Backup Checklist](backup.md) whenever you have done work you don't want to lose.

The [Maintenance Checklist](maintain.md) is a list of things people have had to do over the last year to repair broken software.  If your system breaks, look here to see if someone else has figured out how to fix it.

Run the [Upgrade Checklist](upgrade.md) to install a fresh version of OSX on your terminal.  If you have a new computer with OSX installed, just run the [Restore Terminal Checklist](terminal.md).

If you use a system other than OSX, you will need to modify these lists extensively.  They might provide a useful reference for such things as the IP addresses of printers and the set of Python packages to install.


How to follow a list
---

The lists comprise numbered steps.  Some steps will only work if you have carried out certain previous ones.  Therefore, if you want to install a single program, you shouldn't just look for the step that installs it.  Instead, work through the list from the start, and skip steps that you know aren't necessary.

The simplest kind of step instructs you to do something in the OSX user interface.  These assume you can navigate sequences of menus and tabs such as Systerm Preferences → Printers & Scanners → Add → IP, and peform other standard UI actions.

Some steps contain hyperlinks.  These will either take you to a website with instructions to install some software, or they will download an OSX package that will install software when you open it.

The third kind of step requires you to run

        a command

in a terminal window.

If you don't know what the above paragraphs mean, you shouldn't try this on your own.  Ask a geek to help you.


Maintaining the checklists
---

The lists are held in a Git repository, with several branches.  The master branch is intended to contain generic checklists, with steps that almost everyone will follow.  It does not mention things such as text editors and web browsers, so you should create a branch that includes steps to install the ones you like.  I suggest you use your login as the name of this branch.  The branch for thisrod is available as an example.

You should merge the default branch into your personal branch before you run any list.  Please update steps on the master branch that fail, and push it to github when you're done.

If your system breaks, and you update something to get it working again, please add those steps to the [Maintenance Checklist](maintain.md).  Steps on this list should be idempotent, to avoid harm if someone forgets where they got up to and performs a step twice.  If this is impossible, the list have a very bold warning.  I suggest that you delete steps in your personal branch of maintain.md as you perform them.

The /etc directory has copies of some elusive configuration files.  These are described in the checklists at the point they are installed.  Consider adding obscure and generally useful files that you download, with instructions on how to install them.
