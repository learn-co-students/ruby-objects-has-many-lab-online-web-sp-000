---
tags:
languages:
resources:
---
# Ruby Objects Has Many Lab

Song belongs to Artist
Song#name
Song#artist=
Song#artist
Song#artist_name # should not break on nil
Song#artist_name= # should not break on nil

Artist has many Songs
Artist#name
artist.songs
no artist.songs=
artist.add_song
artist.add_song_by_name
artist.song_count

Post belongs to Author
Post#title
Post#author=
Post#author
Post#author_name # should not break on nil
Post#author_name= # should not break on nil

Author has many Posts
Author#name
author.posts
no author.posts=
author.post
author.post_by_title
author.post_titles
