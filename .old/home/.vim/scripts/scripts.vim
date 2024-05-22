if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/bin/env\s\+gosh\>'
    setfiletype scheme
endif
if getline(1) =~# '^#!.*/bin/env\s\+gsi\>'
    setfiletype scheme
endif
if getline(1) =~# '^#!.*/bin/env\s\+csi\>'
    setfiletype scheme
endif

