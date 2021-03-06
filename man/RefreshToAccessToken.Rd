% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RefreshToAccessToken.R
\name{RefreshToAccessToken}
\alias{RefreshToAccessToken}
\title{This function takes the Refresh Token as an argument and retrives a new
Access Token based on it}
\usage{
RefreshToAccessToken(token.object)
}
\arguments{
\item{token.object}{OAuth2.0 Token Object containing refresh token, client ID and client Secret}
}
\value{
token.object Returns the same token object with the updated access token. Since the Token
object is a Reference Class object it can be modified in place
}
\description{
This function takes the Refresh Token as an argument and retrives a new
Access Token based on it
}
\keyword{:}
\keyword{Reference}
\keyword{https://developers.google.com/accounts/docs/OAuth2#installed}
\keyword{internal}

