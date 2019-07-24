#!/usr/bin/env python

spam = 42
eggs = "24"

## "Casting" form ints and strings
ingredients = spam + int(eggs)
menu = str(spam) + eggs

## Alternative using str method
vikings = spam.__str__() + eggs