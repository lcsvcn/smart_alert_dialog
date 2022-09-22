## 4.0.0
* Removed all from version 3.0.0 deprecated parameters

## 3.1.1
* Fix assertion error

## 3.1.0
* Deprecated parameters [content]. Use [message] instead. (Reason: better naming)
* Deprecated parameters [onConfirmPress]. Use [onConfirmPressed] instead. (Reason: better naming)
* Deprecated parameters [onCancelPress]. Use [onCancelPressed] instead. (Reason: better naming)

## 3.0.0
* Supports web now
* Removed deprecated parameters [confirmText] and [cancelText] (Use instead: AlertDialogText)

## 2.2.1
* [AlertDialogText] and [AlertDialogStyle] are not part of library but components

## 2.2.0
* Refactor code format

## 2.1.2-nullsafety.0
* Removed const from [AlertDialogText] and [AlertDialogStyle]

## 2.1.1-nullsafety.0
* Added more dartdoc

## 2.1.0-nullsafety.0
* Formatted dartdoc to be in the right format
* Added [style] to the Dialog Alert Widget
* Added [text] is not required anymore
* Both [text] and [style] has default values if not set

## 2.0.0-nullsafety.0
* Deprecated [confirmText]. Use [text] instead!
* Deprecated [cancelText]. Use [text] instead!
* Added required field [text] to have a DialogAlertText, for editing [confirm], [cancel], [dismiss] buttons

## 1.1.0
* Added dartdoc and fixed readme.

## 1.0.0
* Initial Release
* Null Safety