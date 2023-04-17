# x86 Assembly
This repository is a reflection of my learning process of x86 Assembly. I will share my beginning experiences and provide a quick introduction to the x86 Assembly below. So I believe that this repository may helpful for newbies who intents to learn x86 Assembly. Besides I shared my x86 Assembly code pieces from the present tutorial I am learning.  In the [/basic-examples](https://github.com/dogukan6durukan/x86-assembly/tree/main/basic-examples).

## Introduction
### How Assembly works?
Firstly, the reason I'm refering to the x86 Assembly above is x86 itself is a [computer architecture](https://en.wikipedia.org/wiki/X86) initially developed by Intel itself. By far the most of the computers are adapted the x86 but there are still some computer architectures are based on different ones mostly the [ARM](https://en.wikipedia.org/wiki/ARM_architecture_family). 

So, by being a low-level language itself we can't directly write Assembly for different architectures in contrast to high-level programming languages. Because registers or any other things are different in several architectures.

Also, system calls are being different in several operating systems. Not Assembly code since they are not written in different architectures but system calls are different as in x86-64 and x86-32. For example in 64-bit Linux ASM we use `syscall` for interrupt and in 32-bit Linux ASM we use `int 80`. Also in Windows you supposed to use Windows libaries which is not viable in Linux.
Besides, Assembly syntax even can change in several Assemblers.

### What is Assembler?
Writing an Assembly code on your local computer may require you to install an Assembler. Basically, Assembler itself is considered a compiler. An assembler program creates object code by translating combinations of mnemonics(i.e `mov, jmp`) and syntax for operations and addressing modes into their numerical
equivalents. I installed [NASM](https://www.nasm.us/) for Assembler. Because as I mentioned above, Assembler syntaxes may change. For instance, an instruction to add memory data to a register in a x86-family processor might be `add eax,[ebx]`, in the original Intel syntax, whereas this would be written as : `addl (%ebx),%eax` in the AT&T syntax used by the GNU Assembler. 

### Why choose NASM?
So, after a bare-bone example, the main reason I'm using the NASM is: Almost every piece of code on Assembly is mostly based on Intel syntax that you would probably see in general and NASM itself is also a cross-platform Assembler. There is also called MASM assembler which aims at Windows and MS-DOS operating systems. Also even though it supports Intel syntax there are still some slight differences with NASM which may endeavor you for some reasons like some pieces of code you will try in general as a beginner. 

### Which OS is more convenient to write x86 Assembly?
Corresponding to my impressions, using the Linux system is simplifying your learning curve instead of dealing with Windows libraries. Because as a Windows user, in the beginning, I was a bit struggled with using Windows libraries with Assembly code even though nothing much knows about Assembly code. Also fact of the deficiency of the tutorials I decided to install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install). The reason I installed the WSL is: It's already a Linux subsystem for Windows and you can maintain Linux Syscalls in your Assembly code which is very straightforward to do. Also, according to my impressions, almost every piece of code I have seen in the community is based on the Linux syscalls apart from entangled Windows Libraries. Besides, almost every tutorial you would see is probably based on x86 assembly language on Linux. 

### Which sources are you using to learn x86 Assembly?
**Tutorials:**

x86  :
- [https://asmtutor.com/](https://asmtutor.com/) 
- [https://www.cs.virginia.edu/~evans/cs216/guides/x86.html](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)

x86-64 :
- [http://www.egr.unlv.edu/~ed/x86.html](http://www.egr.unlv.edu/~ed/x86.html)


**Linux syscall table:**
- [https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)

**Reference :**
- [https://www.felixcloutier.com/x86/](https://www.felixcloutier.com/x86/)