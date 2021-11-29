# Project-2 Rubric

|Score|Notes| Evidence|
|-|-----|---------|
|.5| short release cycles| All the releases can be seen in https://github.com/hvudeshi/SRIJAS/releases |
|.5| workload is spread over the whole team (so one team member is often Xtimes more productive than the others...| https://github.com/hvudeshi/SRIJAS/graphs/contributors |
|.5|Docs: why: docs tell a story, motivate the whole thing, deliver a punchline that makes you want to rush out and use the thing | The demo video and repository homepage (README) shows this (https://github.com/hvudeshi/SRIJAS/blob/main/README.md) |
|.5|the files CONTRIBUTING.md lists coding standards and lots of tips on how to extend the system without screwing things up  | https://github.com/hvudeshi/SRIJAS/blob/main/CONTRIBUTING.md |
|.5|Docs: doco generated , format not ugly  | in GH(https://github.com/hvudeshi/SRIJAS/blob/main/docs/Scraper_Service_linked-in_documentation.pdf) |
|.5|Proof for whole team uses the same tool (e.g. config files in the repo, updated by lots of different people) | We have used an AWS server and all have worked on the AWS server. There is also Infrastructure.pdf added in the docs. https://github.com/hvudeshi/SRIJAS/graphs/contributors |
|.5|evidence that the members of the team are working across multiple places in the code base | https://github.com/hvudeshi/SRIJAS/graphs/contributors |
|1|Docs: what: point descriptions of each class/function (in isolation)  | https://github.com/hvudeshi/SRIJAS/blob/main/docs |
|.5|Number of commits: by different people  | in GH (https://github.com/hvudeshi/SRIJAS/commits/main) |
|1|issues are being closed | evidence in GH(https://github.com/hvudeshi/SRIJAS/issues?q=is%3Aissue+is%3Aclosed) |
|.5|issues are discussed before they are closed | After implementation of every issues, there's been validation based on whether the issue is properly working or not. Additionally, all the dependencies based on that issue is discussed and checked if all the functionalities are working fine. For eg. 1. Login System was added to the project to maintain and track the record of every user. After, implmenting all the necessary dependencies were checked such as new attributes are added to the database tables, main index.html file and other dependent on that are updated, etc. |
|.5|Use of syntax checkers. | https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/main.yml |
|1|Issues reports: there are many  | https://github.com/hvudeshi/SRIJAS/issues |
|.5|Use of code formatters. | https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/code_formatter.yml |
|.5|Use of style checkers | https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/style_checker.yml |
|.5|Docs: short video, animated, hosted on your repo. That convinces people why they want to work on your code. | https://github.com/hvudeshi/SRIJAS/blob/main/README.md |
|.5|test cases exist  | a lot of test cases exist covering almost all the functionalities. (https://github.com/hvudeshi/SRIJAS/blob/main/tests/), (https://github.com/hvudeshi/SRIJAS/blob/main/Code/Web_app/test.php) |
|.5|Use of code coverage  | https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/code_cov.yml |
|.5|other automated analysis tools  | There are two additional automated analysis tools 1. Close as a feature (https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/close_as_a_feature.yml) 2. Respost- adding comment to new issue events (https://github.com/hvudeshi/SRIJAS/blob/main/.github/workflows/Respost.yml) |
|.5|test cases:.a large proportion of the issues related to handling failing cases. | if a test case fails, open an issue and fix it, evidence( 1. https://github.com/hvudeshi/SRIJAS/commit/5e0c52f474b5a31bfc5b1e81e18ecafb49d54b35 2. https://github.com/hvudeshi/SRIJAS/commit/c0d692e72aa87eef7887f03a380051c13929380c) |
|.5|test cases are routinely executed | Github actions and travis CI both are conducting regular tests. (https://github.com/hvudeshi/SRIJAS/blob/main/.travis.yml) |
|1|Documentation describing how this version improves on the older version| This version provides additionality functionalities which are described in the docs folder. (https://github.com/hvudeshi/SRIJAS/blob/main/docs/Phase-2_improvements.pdf) |
|3|This version is a little(1), some(2), much(3) improved on the last version.| This version is a much improved in the last version. (https://github.com/hvudeshi/SRIJAS/blob/main/docs/Phase-2_improvements.pdf). Final release (https://github.com/hvudeshi/SRIJAS/releases/tag/v8.0.0) has all this features included. | 
|16| Total|
