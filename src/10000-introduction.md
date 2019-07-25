# Introduction

<div class="todo">

Explain "What is Ops School?"

</div>

## Goals and Focus

To have a complete syllabus for training smart persons with high
potential who already have a basic understanding of Linux or other UNIX
variant, to become strong junior systems administrators. This course
will focus on the Linux platform as a basis for competency in any UNIX
ecosystem.

Usenix defines the sysadmin role as:

> \-- Usenix, *Job Descriptions for System Administrators, 3d Edition
> Revised*

Our goal is to teach these topics, but also to provide a good
understanding of how the components work, which enables the students to
continue to grow their skills and contributions.

Our focus is any person who has an interest in operations. There are
often personality traits which allow people to understand the role of a
systems administrator more easily, but the material should be easily
accessible to anybody who wishes to learn about it.

The required minimum skill level before participating will be as
follows:

  - Has installed Linux or other UNIX variant
  - Is comfortable with, or even prefers, working on the command line
  - Has a basic understanding on navigating the filesystem, and the most
    basic tools (ps, ls, top, etc).

## Syllabus layout

As we create this syllabus, there will inevitably be items which are
found to be too advanced for a first pass but should be kept and taught
as a progression into an intermediate systems administrator.

  - Junior topics are labelled "101".
  - Intermediate topics are labelled "201".
  - Senior topics are labelled "301".

# Contributions

Ops School is a community driven effort, and we always need people to
contribute. Currently we need people who are able to fill in areas in
our documentation -whether it's a little or a lot, everything helps.

## How we'll organize work

This is a living document. We write headings and their breakdowns as
bullet points. We turn each bullet point into the material we want
people to read. That's right. The syllabus IS the course. For now, at
least, until we find a better way.

You should start writing the actual material to be taught right into
this syllabus. We'll worry about formatting and things later. As you
write, remember that "101" material is aimed at people who are working
up to being junior sysadmins. They're mostly blank slates.

## How to contribute

You can find the documentation source on GitHub and send pull requests:

> <https://github.com/opsschool/curriculum>

Please fork the repo to your own account, create a branch, make your
changes there, and issue a pull request from your fork/branch to
`opsschool:master`. Be descriptive in your commit message for anything
non-obvious.

If all of this git and GitHub stuff is a little overwhelming, take a
look at [GitHub's documentation](). If you have still have questions
after reading that, please feel free to join \#opsschool on
irc.freenode.net and ask your questions there. We'll be glad to help you
get your patches merged--but please remember that many of us are busy
ops professionals, so we may not respond immediately.

If you'd like to join the mailing list, email <avleen@gmail.com>.

## Rewards for contributions

We have a special reward for reaching either of the following goals with
your contributions:

  - 10 pull requests totaling 50 or more lines changed
  - 1 recorded Ops School video

For completing either of these, you will receive a dozen freshly baked
cookies, made fresh for you by a professional baker, and a 3-inch
die-cut sticker of the Ops School logo.

Once you reach either of these, please fill in the [OpsSchool rewards
form]() and we will get your reward over to you\!

## Ops School Videos

In collaboration with O'Reilly Media, we are filming the Ops School
curriculum to provide another method of learning for students. Filming
happens approximately every 3 months in New York or Silicon Valley.

O'Reilly is publishing the videos online, in individual form and in
package form. Any profits which would be made by Ops School are donated
to non-profit organisations which aid in learning for low-income
persons.

Video can be short (10-20 mins), or longer. Depending on the content in
the video, some presenters choose to use slides, while others prefer
screen-casting live demonstrations. Some videos may not need any
supporting material at all\!

The next scheduled filming is at the Santa Clara Hyatt, from Monday June
17th 2013 to Friday June 21st 2013. Filming slots are available all day.

The topics which have already been filmed are:

  - Boot Process 101
  - DNS 101
  - Filesystems 101
  - MySQL 101
  - Nagios 101
  - Networking 101
  - Outage Investigation 101
  - Package Management 101
  - Shells 101
  - SSH 101
  - Application Level Monitoring
  - Careers In Operations
  - Operable Service - What People Expect From an Operable Service
  - Productivity Tools and Techniques
  - The `/proc` Filesystem
  - Web Flow - The Life of a Web Request

If you are interested in filming, please contact Avleen Vig
(avleen\#gmail.com) or open an issue on the Github project.

## How to write sections

In order to help students learn as much as possible, we are taking the
following approach to the curriculum (this isn't a hard-and-fast rule,
but an encouraged guideline wherever possible):

  - Approach your writing in three steps:
    1.  Tell students what they're going to learn
    2.  Teach them what they need to know
    3.  Tell them what they have learnt
  - As much as possible, treat this as an interactive exercise. For
    example if you are writing about virtual machines, don't just write
    about virtual machines. Have the student create a virtual machine,
    and then explain what just happened. Don't tell students that
    package managers install packages, have them install a few packages
    and then explain how the package manager did its thing.

Please read the `conventions` topic for some style guideline and
preferences.

## Overwriting existing content

There are times when you will want to update or replace sections of text
written by others. When doing so, follow these guidelines to ensure your
changes are integrated smoothly:

  - Submit your pull request
  - Reference the original author in your commit

We'll wait a few days (up to one week) to let the original author
comment, if we feel there may be anything contentious in the commit. For
most simple and straightforward commits, we'll simply accept the commit.

## Credits

If you contribute to this document and would like your name in lights
(or, at least, written down somewhere) please add it here along with an
email address and any affiliation:

| Name                                                                                                                                                                       | Company                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| Avleen Vig \<<avleen@etsy.com>\>                       Patrick McDonnell                                                                                                   | Etsy, Inc                            |
| Michael Rembetsy \<<mcr@etsy.com>\>                                                                                                                                        | Etsy, Inc                            |
| Magnus Hedemark \<<magnus@yonderway.com>\>                                                                                                                                 | Wireless Generation                  |
| Ariel Jolo \<<ajolo@sysarmy.com.ar>\>                                                                                                                                      | sysARmy                              |
| Ryan Frantz \<<ryanleefrantz@gmail.com>\>                                                                                                                                  | Crabby Admins (www.crabbyadmins.org) |
| Mike Fiedler \<<miketheman@gmail.com>\>                                                                                                                                    | Datadog                              |
| Nathan Milford \<<nathan@milford.io>\> Patrick Cable \<<pc@pcable.net>\>                                                                                                   | Outbrain, Inc.                       |
| Benjamin Krueger \<<benjamin@seattlefenix.net>\> Mårten Gustafson \<<marten.gustafson@gmail.com>\> Phil Hollenback \<<philiph@pobox.com>\>                                 | Sourcefire, Inc                      |
| Adam Jacob \<<adam@opscode.com>\>                                                                                                                                          | Opscode, Inc.                        |
| Mark Imbriaco \<<mark@github.com>\>                                                                                                                                        | GitHub                               |
| James Turnbull \<<james@lovedthanlost.net>\>                                                                                                                               | Puppet Labs                          |
| Scott Nyce \<<snyce@codetwit.com>\>                                                                                                                                        | TiVo, Inc.                           |
| Christian Paredes \<<cp@redbluemagenta.com>\> Jan Schaumann \<<jschauma@netmeister.org>\>                                                                                  | Amazon                               |
| Stephen Balukoff \<<sbalukoff@bluebox.net>\>                                                                                                                               | Blue Box Group                       |
| Evan Pettrey \<<jepettrey@gmail.com>\>                                                                                                                                     | LOPSA                                |
| Khalid Maqsudi \<<khalid7621@hotmail.com>\> Paul Graydon \<<paul@paulgraydon.co.uk>\> Harold "Waldo" Grunenwald                                                            | Ashford.com                          |
| Martin Gehrke \<<martin@teamgehrke.com>\>                                                                                                                                  | LOPSA                                |
| John Boris \<<jborissr@gmail.com>\>                                                                                                                                        | LOPSA                                |
| John Dewey \<<john@dewey.ws>\> Carolyn Rowland \<<unpixie@gmail.com>\>                                                                                                     | AT\&T                                |
| Jordan Dea-Mattson \<<jdm@dea-mattson.com>\>                                                                                                                               | Numenta, Inc.                        |
| Sean Escriva \<<sean.escriva@gmail.com>\> Adam Compton \<<comptona@gmail.com>\>                                                                                            | Heavy Water Ops                      |
| Franck Cuny \<<franck@lumberjaph.net>\>                                                                                                                                    | SAY Media                            |
| Chris Nehren \<<cnehren@omniti.com>\> Brian Rak \<<dn@devicenull.org>\> Divij Rajkumar \<<drajkuma1@gmail.com>\>                                                           | OmniTI                               |
| Aslan Brooke \<<aslandbrooke@yahoo.com>\> Glen Kaukola \<<gkaukola@cs.ucr.edu>\>                                                                                           | ZynxHealth.com, InfoQ.com            |
| Spencer Krum \<<krum.spencer@gmail.com>\>                                                                                                                                  | UTi Worldwide Inc.                   |
| Jeremy Grosser \<<jeremy@synack.me>\> Hugo Landau \<<hlandau@devever.net>\>                                                                                                | Uber Technologies, Inc.              |
| Konark Modi \<<modi.konark@gmail.com>\>                                                                                                                                    | MakeMyTrip.com                       |
| Josh Reichardt \<<josh.reichardt@gmail.com>\> Ben Reichert \<<ben@benreichert.com>\>                                                                                       | thepracticalsysadmin.com             |
| Simon Aronsson \<<simon.aronsson@gmail.com>\> Andrew Langhorn \<<andrew@ajlanghorn.com>\> Abubakr-Sadik Nii Nai Davis \<<dwa2pac@gmail.com>\> Mike Julian Bram Verschueren | itshale.com, simonaronsson.se        |
