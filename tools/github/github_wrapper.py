#!/usr/bin/python3

import os

class Repo:
    def __init__(self, args):
        self.repo = args[0]
        self.id = args[1]
        self.state = args[2]
        self.title = args[3]
        self.labels = args[4]
        self.updated = args[5].replace("\n", "")

    def __str__(self):
        return f"{self.repo} {self.id} {self.title} {self.updated} {self.state}"
    def updated(self):
        return self.updated
    def lupdated(self):
        return len(self.updated)
    def lrepo(self):
        return len(self.repo)
    def longestvalue(self):
        maxl = 0
        for key, val in vars(self).items():
            maxl = max(maxl, len(val))
        return maxl

def printTable(items):
    if(len(items) < 1):
        return

    for item in items:
        print ("{:8} {:15} {:10} {:10} {:10}".format(item.repo, item.id, item.title, item.updated, item.state))

def openPr(user = "@me"):
    repos = []
    result = os.popen(f"gh search prs --author '{user}' ")
    lines = result.readline()
    while(lines):
        repos.append(Repo(lines.split("\t")))
        lines = result.readline()
    return repos

x = openPr()
x.sort(key=Repo.lrepo)
printTable(x)
