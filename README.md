## What do you want to talk about?

* Swift optionals
* error handling, `do`, `try`, `catch`

---

## Debugging

https://docs.google.com/presentation/d/1mFZlApd2nc-3xvh0bu3Si7dPRbfMKMSKdjjfuHoywhQ/edit#slide=id.g394dd3ea0_0192

![Bug](https://geekwhisperin.files.wordpress.com/2009/09/bug-vs-feature.jpg)

### Bugs

* Deficiencies that cause unexpected or no operation.
* Users don't know how to use your app

**Examples:**

* Not reloading a table view.
* Not `init` an array before using it.
* Busted links to storyboard.

### Fixing Bugs

* Debugging.
* Making sure the above things don't happen.

**Systematic approach:**
* Get an idea of what's going wrong.
* Figure out what is wrong, and be able to reproduce the issue.
* Come up with a plan. Look at the data.
* Change stuff and see what happens. Divide and conquer
* Maybe document, 
* Git commit & push

### Xcode

#### Breakpoints

#### LLDB

LL DeBugger

Use `help` 

* `po`, `p`, `fr v`, `expression`

use `help` to find out more information about these.

#### Navigator

* Use this to create symbolic breakpoints

### Print Tricks

```
NSLog(@"%d: %s", __LINE__, __PRETTY_FUNCTION__);
```

```swift
print(#file, #function, #line, #column)
```

### NSAssert/Assert

Use them to crash your app when there's a bug.

### TODO:, FIXME:
 
Add this build script to your project to generate warnings when you add a `TODO:|FIXME:` 

```
TAGS="TODO:|FIXME:" find "${SRCROOT}" ( -type f -name ".swift" ) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($TAGS).\$" | perl -p -e "s/($TAGS)/ warning: \$1/"
```