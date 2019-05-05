# DateField

---

![DateFieldDemo](assets/DateField/1.gif)
![DateFieldDemo](assets/DateField/2.gif)

![DateFieldDemo](assets/DateField/3.gif)

This is your UIDatePicker. You can do all the things you can do with the UIDatePicker you're used to, the property names are the same.

**[DateFieldDelegate](https://barbulescualex.github.io/MaterialFields/Protocols/DateFieldDelegate.html)**

This mirrors the PickerField delegate.

You have:

* shouldBeginEditing : wether it should open or not

* didEndEditing: user closed the field by tapping on the done button

* cleared : user tapped the clear button (only if `isClearable = true`)

* dateChanged : user selected a different date

**Responder Behaviour**

* `becomeFirstResponder()` will activate and open up the picker
* `closeFirstResponder()` will deactivate and close the picker