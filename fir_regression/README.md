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
