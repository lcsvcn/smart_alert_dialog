# Smart Alert Dialog 

[![Pub Version](https://img.shields.io/pub/v/smart_alert_dialog)](https://pub.dev/packages/smart_alert_dialog)


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
- [ ] Add Test to every components

Please open an issue if something doesn't work or is not clear enough.

## License

See [LICENSE.md](LICENSE.md)
