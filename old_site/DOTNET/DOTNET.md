#.NET Guide for [Operation Code](http://operationcode.org)

This guide is aimed at veterans who are wishing to learn programming on Microsoft's .NET Framework. No knowledge of Computer Science or Programming is assumed. This guide may contain profantiy, drunken ramblings and mind blowing images stolen from google image searches. It may not be suitable for all audiences.

## Quick Start

If you are really impatient  (or already think you know shit), you can just jump in right away by;

- Downloading and Installing the Free Visual Studio Community Edition [here](https://www.visualstudio.net).

- Signing up for a FREE 30-day trial of Bob Tabor's [Learn VisualStudio](http://www.learnvisualstudio.com) site

## Table of Contents
- [Quick Start](#quick-start)
- [Table of Contents](#table-of-contents)
- [Intro to Programming](#intro-to-programming)


# Intro to Programming

People get intimated by computers, but really they are dumb as shit. A computer can't do anything you don't tell it to do.
Thinking about it, that means everything your computer, tablet, cell phone, or TV does was programmed to do that single thing by someone.
So pretty much, programming is about making the computer your bitch. Cool right?

But how do we tell computers what to do?

Spoiler alert: Not like this!

![alt text][scotty-talks]
[scotty-talks]: scotty_trek4.jpg "Hello, Computer!"

We do it through what we call machine language. Machine language is the lowest level of instructions that directly operate against the processor/hardware of a computer.

Sounds complicated, right? It is! But don't worry, because .NET takes care of all that bullshit for you. It's what is called an interpreted language.

The process to run a .NET program goes like this;
- You write your .NET programs in a plain, human-readable language like VB.NET, C# or F#.
- You "build" (somtimes called compiling) your program into what's called "Intermediate Language" (IL) in the form of a .exe file (or sometimes a .dll file.)
- You start the program by running the .exe file
- The .NET runtime see that you are trying to run a program in IL, and it translates the program into machine language in real time.

Most .NET programmers never touch the IL. Then there are some basement-dwelling neckbeards that write exclusively in it when they aren't trolling reddit, but that's another conversation entirely.
