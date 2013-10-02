# git history visualizations

Vincent Driessen's [git-flow](https://github.com/nvie/gitflow) seems like a nice workflow.

I made a little script to simulate the sequence of git actions that would create the [canonical git-flow example diagram](http://nvie.com/posts/a-successful-git-branching-model/).

Then, I tried to get git to show me the full history of the resulting repository. The results look nothing like the diagram.

I'm looking for an algorithm for `git log --branch` whose output will resemble the git-flow diagram, given a repository that uses git-flow (or similar merge-heavy workflows.)
