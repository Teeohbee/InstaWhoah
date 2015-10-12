InstaWhoah!
===================

Brief
-------
* Build an Instagram clone
* Allow users to sign up / log in / log out
* Allow users to post photos with captions, comment on photos and like photos

Approach
-----
#### V 1.0
This was predominately a Ruby on Rails based project and my first time building such a project alone. I initially thought about my core feature requirements for an MVP, and decided that v1 should focus on the ability to be able to upload photos with an accompanying caption.

```
As a photographer
So that I can display my photos on the internet
I'd like to upload my photos to a website
```

**Key learning**
* Using the gem `paperclip` allowed me to easily upload photos
* Fully stubbing and mocking the image upload so as to test it effectively.

#### V 2.0
With the initial set up complete, I looked for quick, easy additions that would add large new feature sets to the web app. I decided to focus on adding users and comments.

```
As a person
So that pictures are attached to me
I'd like to sign up as a users

As a verbose user
So that I can express myself
I'd like to comment on others' photos
```

**Key learning**
* Using the gem `Devise` to manage the sign-up/-in/-out process more effectively
* Customising the `Devise` set up to allow users to log in with either an email or username
* The importance of relational databases - how users, images and comments are associated and interact.

#### V 3.0 (In development)
For v3, I wanted to implement a like button that would allow photos to accrue 'likes' as well as add styling to make the app more user friendly and less of an eye-sore.

```
As a user of few words
So that I can express myself
I'd like to be able to 'Like' others' photos
```

**Key Learning**
* Adding small javascript snippets to a rails app can provide new functionality as well as a slicker user experience.
* I am in the process of implementing `Foundation` into the app, as an alternative to `Bootstrap` and a new learning experience in terms of design.
