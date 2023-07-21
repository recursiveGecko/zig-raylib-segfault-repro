```bash
$ lldb -- zig build-exe [...]

(lldb) run
Process 23003 launched: '~/.local/bin/zig' (x86_64)
Process 23003 stopped
* thread #1, name = 'zig', stop reason = signal SIGSEGV: invalid address (fault address: 0x7fff00000000)
    frame #0: 0x0000000008270bec zig`___lldb_unnamed_symbol164551 + 1356
zig`___lldb_unnamed_symbol164551:
->  0x8270bec <+1356>: callq  *(%rax)
    0x8270bee <+1358>: testq  %rax, %rax
    0x8270bf1 <+1361>: je     0x8270c47                 ; <+1447>
    0x8270bf3 <+1363>: movq   %rax, %rcx
```
