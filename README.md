### BOILERPLATE SNIPPET:

```assembly
; Assembly Code
.model small
.stack 100h
.data
.code
main proc
  ; Write from here

  mov ah, 4ch
  int 21h

main endp
end main
```

### INSTALL DOSBOX

For Ubuntu

```bash
sudo nala install dosbox
```

### MOUNT VIRTUAL DRIVE

```bash
MOUNT C directory_path
```

### EDIT / CREATE FILE

```bash
EDIT filename.asm
```

### COMPILE LINK AND RUN

### LINK OBJ FILE

### RUN PROGRAM

```js Compile
MASM filename.asm
```

```js Link
LINK filename.obj
```

```js Run
filename.exe
```

# OR

INSTALL VSCODE EXTENSION - MASM / TASM
RUN - Right-Click on Code -> Run ASM Code
