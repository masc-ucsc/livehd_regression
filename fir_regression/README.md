in this environment, all chisel code should be declared the package as the file
name without postfix. e.g. foo.scala should have as the first line of chisel
code

```
package foo
```

also need to import 
```
import chisel3._
```

make sure you include these two lines in your chisel code




* to avoid the sbt, "java.lang.OutOfMemoryError: Java heap space" error in
  chisel compiler, add the following to your bashrc or zshrc to increase the
  heap size.

```
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=16G -Xmx64G -Xms32G"
```

