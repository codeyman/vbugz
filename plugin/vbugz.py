#!/usr/bin/env python
# File name:    vbugz.py
# Date:         2017/06/01 20:03
# Author:       Sridhar V Iyer


from subprocess import check_output

def vbugz_helper(filen,lineno):
    bugid = 0
    output = "ENOBUG"
    out = check_output(['git', '--no-pager', 'blame', filen, '-L{},{}'.format(lineno + 1, lineno + 1), '-p'])
    lines = out.split('\n')
    for line in lines:
        nl = line.strip()
        if nl:
            vals = nl.split(' ')
            if vals[0] == 'summary':
                if (vals[1] == "Bug"):
                    bugid = int(vals[2].split(':')[0])
                    break
    
    if bugid != 0:
        output = check_output(['bugz', 'get', '{}'.format(bugid)])
    return bugid,output 

