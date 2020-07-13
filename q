[33mcommit dfd82d403c5fd09aeda75c02f370e7ef97a0e715[m[33m ([m[1;36mHEAD -> [m[1;32muser_profiles[m[33m, [m[1;31morigin/user_profiles[m[33m)[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 12 09:20:39 2020 +0000

    Security changes to routes

[33mcommit 58d79a1e213946cf8b45442d759b26918f7e4952[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jul 11 17:01:28 2020 +0000

    Updated Rails to 5.2.4.3, added profile pictures

[33mcommit 60b9b078ba3dad7e484a297a8fafea4e9ed57dd7[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jul 11 14:05:37 2020 +0000

    Added user profile view, edit profile page

[33mcommit e1322370337462959b95ee69b29b37f07dd01f00[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 10:50:51 2020 +0000

    Added automatic profile generation when new account is created, added placeholder profile page, changed navbar button layout

[33mcommit f1b3adacc9dc66902b3dec6735190f39cee88819[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 07:26:13 2020 +0000

    Added associations between user & profile models, added nested routes for profiles as children of users

[33mcommit a76cbeaa43dcd3ac75f68fe95006cfa00730fcaa[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 07:09:14 2020 +0000

    Ran pending database migration

[33mcommit c1e219bf95830054fa4d5b7b7b8f33c00a39dc44[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 04:07:58 2020 +0000

    Updated readme

[33mcommit 51f9b03307f65f3820d459f3f5fd5d959040c8a0[m[33m ([m[1;31morigin/master[m[33m, [m[1;31mheroku/master[m[33m, [m[1;32mmaster[m[33m)[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 03:56:39 2020 +0000

    Precompiled assets for Heroku push

[33mcommit dce3169744392b604896d9db8d4f184a6e73c6e1[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jul 6 03:48:28 2020 +0000

    Updated gem versions, updated to use Bootstrap spinners

[33mcommit 61ea8c7a4deaf1d02ef9e196594b26798ff4731b[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 12:30:18 2020 +0000

    Updated Uglifier gem for ES6 syntax support (previously foreach loop unsupported by ES5), updated Devise gem, compiled Heroku assets locally

[33mcommit e9da553300f1c19bda249a8274f8cdf308512c5c[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 12:09:19 2020 +0000

    Fixed typo in stripe.js, put back 'require_tree' statement

[33mcommit 9b582c688e575baaf60cf80899e5b95b01780ca1[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 11:41:32 2020 +0000

    Removed '//require_tree .' statement from application.js

[33mcommit 88cf24fa72ccc524eada35d71923ec90b3dad40b[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 11:18:36 2020 +0000

    Added comments

[33mcommit 1ffb3d949436758fd5c5edf49e8ecbdc2f0487e7[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 10:43:13 2020 +0000

    Added spinner for signup button, QOL changes

[33mcommit 32c659a20633759dd1d9205e4bb234b3b76ab867[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 07:43:58 2020 +0000

    Updated JS syntax to be ES5 compatible

[33mcommit 3f5ae45f03cc7bd58642d40b02aa156eeefe0752[m
Merge: 2b60166 87fd475
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 06:41:42 2020 +0000

    Merge branch 'master' of https://github.com/LMAOboxhack/upskill_saas_tutorial
    
    I actually have no idea

[33mcommit 2b60166a1addac3e32d3ed06079733abac355123[m[33m ([m[1;31morigin/user_accounts[m[33m, [m[1;32muser_accounts[m[33m)[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 06:28:36 2020 +0000

    Restricted allowed plan IDs

[33mcommit d98409f3b4f6027566518dc616cbb1a6ee78122b[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sun Jul 5 06:19:19 2020 +0000

    Added flash message Bootstrap & CSS styles

[33mcommit eca5747f07bfeb500627b561f3c2257780208b1a[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jul 4 03:51:20 2020 +0000

    Added backend Stripe code to create a recurring subscription charge on a paid user

[33mcommit 2f643d8b46230e474d00c270ac0ecad55ee0ba3a[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Wed Jul 1 04:32:18 2020 +0000

    Added Stripe JS to process user card info

[33mcommit 3bd4e2512cbdba5d0c7079b18710d020902e9d69[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 29 09:49:19 2020 +0000

    Added Stripe Customer Token column to Users database

[33mcommit bbe03d1568c2d3b7dda797c015555bd3dae3d0d8[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 29 09:10:47 2020 +0000

    Added Figaro gem for ENV variables, added Stripe API keys

[33mcommit cbde4d8611f223c78c4e02bfcaf3053c3d7b3435[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 29 09:01:14 2020 +0000

    Added separate signup pages for each plan, added CC info fields for billing, added Stripe gem for payment processing

[33mcommit db0c82f45ce051257685aa3f02e3de2b704f8360[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 29 03:59:54 2020 +0000

    Added URL (query string) parameters, used params to conditionally show different sign-up pages

[33mcommit 204532432308a92202677c25b3a347edd4c31851[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 26 04:52:18 2020 +0000

    Added backend association between User & Plan models & db tables

[33mcommit a92a81ff463740a05bd6933b57f67b4cd288a713[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 26 04:09:51 2020 +0000

    Added plans (Plan object) table

[33mcommit c0f8912accbbfee850e4744d71291450a4140c01[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 26 03:24:55 2020 +0000

    Hid Devise flash messages

[33mcommit 7cce890195e4ba4af719aee56cb0887c6ccdc876[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 26 02:21:30 2020 +0000

    Added navbar buttons for login & signup page

[33mcommit d516fc6509f1d5299bf7e302882101883cb6af8a[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Thu Jun 25 13:22:51 2020 +0000

    Added Bootstrap to login page

[33mcommit 20c8106ab41e2b614960b49b1d5ee48bd9337bfe[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Wed Jun 24 10:38:55 2020 +0000

    Added Bootstrap to signup page, added filler text & graphics

[33mcommit 54a0836d204c5439fa22067d51f76b19ba0e4fc3[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Wed Jun 24 08:37:55 2020 +0000

    Added Devise gem for UAM, generated Devise files

[33mcommit 76733d1f7a22b1eeca327440ec4678edafaed16a[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Wed Jun 24 08:25:18 2020 +0000

    Added comments to Contacts controller, Contact object

[33mcommit 87fd4756081dad88c8d52ae2ff36082ce1df14ac[m
Author: LMAOboxhack <48581613+LMAOboxhack@users.noreply.github.com>
Date:   Wed Jun 24 11:46:46 2020 +0800

    Update README.md

[33mcommit b6343c9f74359c0ad6ef184f50753439572d921a[m
Author: LMAOboxhack <48581613+LMAOboxhack@users.noreply.github.com>
Date:   Wed Jun 24 11:46:31 2020 +0800

    Update README.md

[33mcommit f3e6ac5903a0c3b37947e91af1cacdd29a783b20[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Wed Jun 24 03:40:17 2020 +0000

    Added Mailgun add-on, config

[33mcommit 35ed708b53fe2b4e3e44c1e67b9f39159bf21579[m[33m ([m[1;31morigin/contact_form[m[33m, [m[1;32mcontact_form[m[33m)[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Tue Jun 23 11:06:21 2020 +0000

    Edited Contacts controller to pass parameters to mailer

[33mcommit 3538fa672ad63f31980149217c77256ab28b89a9[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Tue Jun 23 10:36:33 2020 +0000

    Added contact form mailer, view

[33mcommit f8acfd57385b1be4342ea841a18f56c765cbdf8a[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Tue Jun 23 08:58:22 2020 +0000

    Removed redundant routes 2.0

[33mcommit a203cffaa8ea3d68ffd8277f23115d4a01ef6f4b[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Tue Jun 23 08:56:01 2020 +0000

    Removed redundant routes

[33mcommit 424518b1835c66cd45997ff0c6911bbd0e62d7c4[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Tue Jun 23 08:30:17 2020 +0000

    Added custom URL for contact page

[33mcommit 54428eb75a0631f224d6ca9bb4249dc4e5b05f29[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 08:20:34 2020 +0000

    Added Hirb for better database visual representation in the console

[33mcommit 1f188f3d731a726326a4b0c1de5d9f3cd9bd7512[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 08:05:23 2020 +0000

    Added save contacts to database functionality

[33mcommit 293cb1c1c4db47342b58d3462250827ef9da8b9f[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 07:08:28 2020 +0000

    Added database for messages

[33mcommit b8825ee46400b5f5d48ca0723ec26d1003b670fd[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 06:51:17 2020 +0000

    Added Navlink for contact page

[33mcommit cad71ebbd02ccf6e86d45a5dbd79cd8958d9cf48[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 06:42:11 2020 +0000

    Used bootstrap to format contact form

[33mcommit fa2d5d7cac582a2e60567552cdaff86335f5f255[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 06:18:57 2020 +0000

    Added contact form using Rails form helpers

[33mcommit 3fd22c926f6062f6c405bc4b6c600bf7d8052a06[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Mon Jun 22 05:01:19 2020 +0000

    Added Contacts (object) controller, view, route

[33mcommit c7779f87a8b4f1671381612267e8b8c5c90030d2[m[33m ([m[1;31morigin/pages_and_layout[m[33m, [m[1;32mpages_and_layout[m[33m)[m
Merge: 56c857a 8ddda0e
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 12:59:51 2020 +0000

    Added Bootstrap JavaScript requirements

[33mcommit 56c857a3a753ea2d74e87d16792833d577dbf913[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 12:56:52 2020 +0000

    Added Bootstrap JavaScript requirements

[33mcommit 32e75d476d640799db5cad5655ffbab8d06298c9[m
Merge: 88d6546 d356427
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 12:19:11 2020 +0000

    Fixed conflicts, updated links(routes) to use Rails prefixes

[33mcommit 8ddda0e8ebb625aec0c960093ad004450a8e8f3b[m
Merge: 88d6546 d356427
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 12:19:11 2020 +0000

    Fixed conflicts

[33mcommit 88d6546967b5c6664822433cadc0f28962704dce[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 12:09:32 2020 +0000

    Replaced HTML anchors with Ruby embedded tags, formatting

[33mcommit 1da07fa7fc645c7cafd55f7c0da32b2a803b889c[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 10:27:58 2020 +0000

    Added Font Awesome gem & basic website logo

[33mcommit d35642736df0d0c58443fb567a239adf61fa17c2[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 10:27:58 2020 +0000

    Added Font Aweseom gem & basic website logo

[33mcommit d47e81332bcb24630b667a0dd9688793f74524a8[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 10:03:03 2020 +0000

    Refactored CSS with SCSS, added comments

[33mcommit d19e81fe6cae8e98765d758d235e32be29876e6d[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 08:53:33 2020 +0000

    Improved home layout

[33mcommit 362071cb0f5b226e4d6475fa058115cee4a84494[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 07:51:55 2020 +0000

    Added CSS background gradient

[33mcommit 7d157eefd4b7572d0684a4b2b69cb056d166a1be[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Sat Jun 20 07:37:28 2020 +0000

    Added basic Navbar from Bootstrap

[33mcommit 969966f601a492a89a6963d9dd098a133d8ff6e0[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 19 10:52:49 2020 +0000

    Added placeholder 'About' page

[33mcommit 033f492b7c0a22a6af2f4cb0b861701bb52a4849[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Fri Jun 19 10:35:51 2020 +0000

    Added custom Google fonts

[33mcommit 93494363473cbbe88e4c9983e5f901b1a8a2ecad[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Thu Jun 11 10:57:51 2020 +0000

    Added a home view, controller action, route

[33mcommit d034d3b953e7ed87ab5c0d7cef54a9adc4da7634[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Thu Jun 11 08:08:41 2020 +0000

    Updated Gemfile for consistency

[33mcommit 2ec012cdc19b1a6aa486d5fddf28649e523d699d[m
Author: Lin Fangyuan <linfangyuan99@gmail.com>
Date:   Thu Jun 11 06:51:56 2020 +0000

    Initial commit
