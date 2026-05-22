# Lab Curator
I don't like using text editor like libreoffice to prepare my lab files that I need to submit each semester. I use Typst that is a text formatting tool just like LaTeX(writter in Rust btw).
So while using that I figured out why not automate this process.
The goal of the program is to read my lab source codes put them into a tyspt source file along with their output by running them.

Feature:
- Compile the program and can handle different languages.
- Handle image output(machine learning)
- Parameters setting using a yaml configuration.

This project is not complete and very very barebone for now, I will work on it in sometime in future.

# Lab Curator

I don't like using editors like LibreOffice to prepare the lab files I have to submit every semester. I prefer using Typst, a text-based typesetting system similar to LaTeX (written in rust BTW).

While using it, I started wondering why not automate the whole process?

The goal of this project is simple read my lab source code files, execute them, capture their output, and automatically generate a Typst source file that can be compiled into the final PDF.

## Features

- Compile and execute programs across different languages
- Capture and handle image outputs (useful for machine learning projects)
- Configure parameters using YAML(like name, details, logo, headers etc)

## Current Status

This project is still very incomplete and extremely barebones at the moment. Right now it's more of an experiment/prototype than a finished tool. I'll probably continue working on it sometime in the future.
