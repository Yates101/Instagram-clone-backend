# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

users = User.create([
  {
    username: "bob1",
    nickname: "bobby",
    email: "bob@obb.com",
    password: "password",
    avatar: "https://yt3.ggpht.com/ytc/AAUvwnhkZjfj3AhZNOvbxzIzVLTKZZHGLAlIHVstuYx1=s900-c-k-c0x00ffffff-no-rj"
  }, 
  {
    username: "bob2",
    nickname: "bawb",
    email: "bawb@obb.com",
    password: "password",
    avatar: "https://static.wikia.nocookie.net/peppapedia/images/4/4c/BobDD.png/revision/latest?cb=20210127154503"
  },
  {
    username: "bob3",
    nickname: "bbboy",
    email: "bbboy@obb.com",
    password: "password",
    avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl3qMNOazUkeIIsrrWRjNSbWu4LdrYzrBdfg&usqp=CAU"
  }
])

posts = Post.create([
  {
    image: "https://i.pinimg.com/originals/ff/7e/85/ff7e850d4e4b70ae1208bea22cf4e32f.jpg",
    caption: "Done killed it on this mountain scene",
    user: users.first
  },  
  {
    image: "https://images-na.ssl-images-amazon.com/images/I/71KaNz7a4JL._AC_SL1024_.jpg",
    caption: "Smashed out a cabin scene",
    user: users.first
  }
])

comments = Comment.create([
  {
    content: "Love it",
    user: users.second,
    post: posts.first
  },
  {
    content: "Huuuuuuuuge",
    user: users.third,
    post: posts.second
  }
])

likes = Like.create([
  {
    user: users.second,
    post: posts.first
  },
  {
    user: users.third,
    post: posts.second
  }
])
