# Smart Alert Dialog 

[![Pub Version](https://img.shields.io/pub/v/smart_alert_dialog)](https://pub.dev/packages/smart_alert_dialog)
![LastCommit](https://img.shields.io/github/last-commit/lcsvcn/speed_dial_fab)
[![xs:code](https://img.shields.io/static/v1?logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCAzMCA0NSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjgzMjEgMzcuNDg4OVYyOS40NzJDMjAuODMyMSAyNi43NjQ1IDE5LjI5NjggMjQuNjY5MiAxNi44NTMxIDI0Ljk1NDJWMjAuMTgzMUMxOS4yOTY4IDIwLjQ2MjggMjAuODMyMSAxOC4zNTcgMjAuODMyMSAxNS42NDQyVjcuNjI3MjhDMjAuODMyMSAwLjI5MTE2NiAyNS4xMjQ2IDAuODEzNjY1IDI5LjM3NDYgMC44MTM2NjVWNC44MDM2NkMyNi45MzA5IDQuNTIzOTQgMjUuMzk1NiA0LjkxNDUgMjUuMzk1NiA3LjYyNzI4VjE1LjY0NDJDMjUuMzk1NiAxOC43NDc2IDI0LjQyODcgMjEuMTE3MyAyMi4zODM0IDIyLjUzMTdDMjQuNDI4NyAyMy45OTg5IDI1LjM5NTYgMjYuMzY4NyAyNS4zOTU2IDI5LjQ3MlYzNy40ODg5QzI1LjM5NTYgNDAuMTk2NCAyNi45MzA5IDQwLjU5MjMgMjkuMzc0NiA0MC4zMTI2VjQ0LjYwMzRDMjUuNjkzMSA0NC41OTgxIDIwLjgzMjEgNDQuODI1MSAyMC44MzIxIDM3LjQ4ODlaIiBmaWxsPSJ3aGl0ZSIvPgo8cGF0aCBkPSJNMC41MDY0MDkgNDQuNTk4MVY0MC4zMDczQzIuOTUwMTYgNDAuNTg3IDQuNDg1NDcgNDAuMTk2NCA0LjQ4NTQ3IDM3LjQ4MzZWMjkuNDcyQzQuNDg1NDcgMjYuMzY4NiA1LjQ1MjM1IDIzLjk5ODkgNy40OTc2NiAyMi41MzE3QzUuNDUyMzUgMjEuMTIyNSA0LjQ4NTQ3IDE4Ljc0NzUgNC40ODU0NyAxNS42NDQyVjcuNjI3MjVDNC40ODU0NyA0LjkxOTc1IDIuOTUwMTYgNC41MjM5MiAwLjUwNjQwOSA0LjgwMzY0VjAuODEzNjM4QzQuNzU2NDEgMC44MTM2MzggOS4wNDg5MSAwLjI4NTg2IDkuMDQ4OTEgNy42MjcyNVYxNS42NDQyQzkuMDQ4OTEgMTguMzUxNyAxMC41ODQyIDIwLjQ2MjggMTMuMDI4IDIwLjE4MzFWMjQuOTU0MkMxMC41ODQyIDI0LjY3NDUgOS4wNDg5MSAyNi43NjQ1IDkuMDQ4OTEgMjkuNDcyVjM3LjQ4ODlDOS4wNDg5MSA0NC44MjUgNC4xOTMyOCA0NC41OTgxIDAuNTA2NDA5IDQ0LjU5ODFaIiBmaWxsPSJ3aGl0ZSIvPgo8L3N2Zz4K&message=xs:code&label=Ping+me+on&color=%23007EFF)](https://xscode.com/profile/lcsvcn)

A Smart Alert Dialog that uses Cupertino for IOS and Material for Android

# Android:

Dismissable Alert Dialog:

![](/https://i.imgur.com/6P0K1l5.png)
<img src="https://i.imgur.com/6P0K1l5.png"  width="300" height="515">

Accept/Cancel Alert Dialog:

![](/https://i.imgur.com/ApKecci.png)
<img src="https://i.imgur.com/ApKecci.png"  width="300" height="515">

# iOS:

Dismissable Alert Dialog:

![](/https://i.imgur.com/5WnBPrf.png)
<img src="https://i.imgur.com/5WnBPrf.png"  width="300" height="648">

Accept/Cancel Alert Dialog:

![](/https://i.imgur.com/0DiszVY.png)
<img src="https://i.imgur.com/0DiszVY.png"  width="300" height="648">

**Please note**: Most of the support on debugging new issues relies on the open source community.

## Props

#### `title`

Change the title of the Alert Dialog

propType: `String`

**REQUIRED!**

#### `content`

Change the description of the Alert Dialog

propType: `String`

**REQUIRED!**

#### `onConfirmPress`

Function to be call on accept press. If not set, it will appear a dismissable alert dialog.

propType: `Function()`
default: `null`

#### `onCancelPress`

Function to be call on cancel press.

propType: `Function()`
default: `Dismiss Dialog Alert`


#### `text`

Change the text from confirm button

propType: `AlertDialogText`
default: `AlertDialogText()`


#### `style`

Change the text from confirm button

propType: `AlertDialogText`
default: `AlertDialogStyle()`

#### `confirmText`
Change the text from cancel button

propType: `String`
default: `Yes`

**DEPRECATED!** Use `text` instead

#### `cancelText`
Change the text from cancel button

propType: `String`
default: `No`

**DEPRECATED!** Use `text` instead

## ToDo
- [X] Add `cancelTextColor` - it is inside AlertDialogStyle, check **style** prop
- [X] Add `confirmTextColor` - it is inside AlertDialogStyle, check **style** prop
- [X] Add `dismissText` - it is inside AlertDialogText, check **text** prop
- [X] Add `dismissTextColor` - it is inside AlertDialogStyle, check **style** prop
- [ ] Create design for Tablets and Web

Please open an issue if something doesn't work or is not clear enough.

## License

See [LICENSE.md](LICENSE.md)
