# You only need to run this code once.
# To run each line of code place your cursor on at the end of the line of code
# and press the "Run" button towards the top/right of this document.
# Ok, lets get started!


# Install some packages
# This will print a bunch of messages in red in your console below. 
# That's normal. Also it can be helpful to know that the section 
# where you see those messages is called the console. Also notice that
# there's a tab next to it called the terminal. We'll use that later. 

install.packages(c("distill", "postcards", "gitcreds", "usethis"))


# Allow Rstudio to talk to github

## Set up a personal access token
usethis::create_github_token()

## Your github account will open to the personal access token page
## You can choose to "never" let the token expire if you'd like. This
## is less secure, but will keep you from having to re-do this step. 
## After deciding, scroll to the bottom and select ok. On the next page
## copy your personal access token

## Run the following line of code. Then paste your personal access token when
## it assk for a password or token and hit enter. 
gitcreds::gitcreds_set()

## You should see these three lines if successful: 
    # -> Adding new credentials...
    # -> Removing credetials from cache...
    # -> Done.

## You can double check by running the following code: 
gitcreds::gitcreds_get()

## You should see the following print out:
    # <gitcreds>
    #   protocol: https
    # host    : github.com
    # username: PersonalAccessToken
    # password: <-- hidden -->

## Congrats! You're an R user now.