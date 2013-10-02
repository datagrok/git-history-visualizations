# git history visualizations

Vincent Driessen's [git-flow](https://github.com/nvie/gitflow) seems like a nice workflow.

However, I'm wary of merge-heavy workflows, because if I do it wrong, git disasters occur. [git-flow](https://github.com/nvie/gitflow) is one tool that helps but the history is still opaque and I don't always want to use it.

If I had a better way to visualize what the state of my history was, I think I'd make fewer merge mistakes.

So, I made a little script (gitflow.sh in this repo) to simulate the sequence of git actions that would create the [canonical git-flow example diagram](http://nvie.com/posts/a-successful-git-branching-model/). You can run this script to build a little repo containing a commit history mimicing what happened in that diagram.

Then, I tried to get git to show me the full history of the resulting repository. The results (date-order.html, topo-order.html, show-branch.html, and gitk.png) look nothing like the diagram.

I'm looking for an algorithm for `git log --branch` whose output will resemble the git-flow diagram, given a repository that uses git-flow (or similar merge-heavy workflows.)

See also [my gist on the topic](https://gist.github.com/datagrok/4221767), soon to be incorporated here.
