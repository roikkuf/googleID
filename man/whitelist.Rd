% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/googleID.R
\name{whitelist}
\alias{whitelist}
\title{Whitelist check}
\usage{
whitelist(user_info, whitelist = NULL)
}
\arguments{
\item{user_info}{the object returned by \link{get_user_info}}

\item{whitelist}{A character vector of emails on whitelist}
}
\value{
TRUE if on whitelist or no whitelist, FALSE if not
}
\description{
After a user logs in, check to see if they are on a whitelist
}
\examples{

\dontrun{
library(googleAuthR)
library(googleID)
options(googleAuthR.scopes.selected = 
   c("https://www.googleapis.com/auth/userinfo.email",
     "https://www.googleapis.com/auth/userinfo.profile"))
                                        
googleAuthR::gar_auth()

## default is user logged in
user <- get_user_info()

the_list <- whitelist(user, c("your@email.com", 
                              "another@email.com", 
                              "yet@anotheremail.com"))

if(the_list){
  message("You are on the list.")
} else {
  message("If you're not on the list, you're not getting in.")
}



}
}

