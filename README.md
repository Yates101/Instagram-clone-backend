# Instagram Clone

## Rails backend

Models:

  Users       |        Posts     |    Comments        |  Likes
Username      | Image            |  Content           | user_id
Nickname      | Caption          |  user_id           | belongs_to:post
Email         | Likes            |  belongs_to:post   |
Password      | Belongs_to:user  |                    |
Avatar:url    |                  |                    |
slug?:string  |                  |                    |

* ...
