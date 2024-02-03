# shell.c
Hacky instant shell that lets you expose existing functions into shell commands. 
Also you can make variables and stuff.

## What you need
- ncurses
- stuff to compile and other thingies maybe

## Compile
### Make staticl object thing
```
./build.sh
``` 

## Programmer Usage
### Declare / Define SHELL FUNCTIONS
```
SHELL_FUNCTION(foo, { char* arg1; long int arg2; }, "this is an explaination of what the function does!");
```

### Declare / Define SHELL VARS
```
SHELL_VAR(char, [64], array_variable, "this is an explaination of what the array_variable is for!");
SHELL_VAR(int, , int_variable, "this is an explaination of what the int_variable is for!");
```

### Create SHELL SCOPE
```
SHELL_SCOPE(
    SHELL_SCOPE_ENTRY(foo),
    SHELL_SCOPE_ENTRY(array_variable),
    SHELL_SCOPE_ENTRY(int_variable)
);
```

## User Interface
```
    ~> help
        ...                     (gives list of functions, variables and relative description / help)

    ~> foo "Hello, World!", 420
        ...                     (function stdout and stderr output)

    ~> !int_variable 329        (sets int_variable to 329)
    
    ...

    ~> quit 
```
