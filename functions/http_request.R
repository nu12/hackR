# HTTP Requests #
# INPUTS
# user_name: string with the user name to search
# social_media: string with the name of the social media to search
#               available options ("facebook", "instagram", "twitter", "github", "chess")
# OUTPUT
# 200: if the page exists
# 404: if the page doesn't exist
http_request <- function(user_name, social_media)
{
  # facebook
  if(social_media == "facebook"){
    http_call <- httr::GET(paste0("https://www.facebook.com/",user_name))
  }
  # instagram
  else if(social_media == "instagram"){
    http_call <- httr::GET(paste0("https://www.instagram.com/",user_name))
  }
  # twitter
  else if(social_media == "twitter"){
    http_call <- httr::GET(paste0("https://twitter.com/",user_name))
  }
  # github
  else if(social_media == "github"){
    http_call <- httr::GET(paste0("https://github.com/",user_name))
  }

  # RETURN STATUS CODE
  return(http_call$status_code)
}




