# Bookmark Challenge

## User Stories

sh```As a User
So that I can see my bookmarks
I would like to access a list of saved bookmarks

As a User
so that I can edit my bookmarks
I would like to add, delete and update my bookmarks

As a User
So that I can be silly
I would like to be able to comment on a bookmark

As a User
so that I can find my bookmarks later easily
I would like to tag bookmarks and filter them

As a User
so that I can keep my info private
I would like to have an account```

## Steps to create the production database

1. connect via `psql`
2. type in command `CREATE DATABASE bookmark_manager;`
3. type in `\c bookmark_manager`
4. run `01_create_bookmarks_table.sql`

## Steps to create the test database

1. connect via `psql`
2. type in command `CREATE DATABASE bookmark_manager_test;`
3. type in `\c bookmark_manager`
4. run `01_create_bookmarks_table.sql`
