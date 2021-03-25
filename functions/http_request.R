# HTTP Requests #
# INPUTS
# user_name: string with the user name to search
# social_media: string with the name of the social media to search
#               available options ("facebook", "instagram", "twitter", "github", "chess")
# OUTPUT
# 200: if the page exists
# 404: if the page doesn't exist
get_status_code <- function(user_name, social_media)
{
  social_media_address <- c(
    "facebook"="https://www.facebook.com/",
    "instagram"="https://www.instagram.com/",
    "twitter"="https://twitter.com/",
    "github"="https://github.com/")

  return(httr::GET(paste0(social_media_address[social_media],user_name))$status_code)
}




