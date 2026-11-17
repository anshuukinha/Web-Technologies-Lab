#!/bin/bash
# Run these commands one by one in Terminal from this folder.
mkdir -p GitExperiment && cd GitExperiment
git init
# On newer Git versions the initial branch may be named master; standardize it:
git branch -M main
printf '<h1>Welcome to Anshu Kinha's Website</h1>
' > index.html
git add .
git commit -m "Initial commit"
git switch -c feature1
printf '<h1>Welcome to Anshu Kinha — Feature One</h1>
' > index.html
git add index.html && git commit -m "Update heading in feature1"
git switch main
git switch -c feature2
printf '<h1>Welcome to Anshu Kinha — Feature Two</h1>
' > index.html
git add index.html && git commit -m "Update heading in feature2"
git switch main
git merge feature1
# This next merge is expected to cause a conflict because both branches changed the same line.
git merge feature2
# Resolve conflict by replacing index.html with the final content:
printf '<h1>Welcome to Anshu Kinha — Final Merged Version</h1>
' > index.html
git add index.html
git commit -m "Resolve merge conflict"
git tag v1.0
git tag
git log --oneline --graph --all
