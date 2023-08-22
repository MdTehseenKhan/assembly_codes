### BOILERPLATE SNIPPET

```assembly
; Assembly Code
.model small
.stack 100h
.data
.code
main proc
  ; Write code from here

  mov ah, 4ch
  int 21h

main endp
end main
```

# RECOMMENDED

### INSTALL VSCODE EXTENSION

MASM / TASM

### RUN

Right-Click on Code -> Run ASM Code

---

### INSTALL DOSBOX UBUNTU

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

### COMPILE CODE, LINK OBJ FILE AND RUN PROGRAM

```bash Compile
MASM filename.asm
```

```bash Link
LINK filename.obj
```

```bash Run
filename.exe
```
