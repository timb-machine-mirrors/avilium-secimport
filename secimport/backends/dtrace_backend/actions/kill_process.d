                ustack();
                printf("\t####################\r\n");
                printf("\t\tKilling process; depth=%d sandboxed_depth=%d module=%s\r\n", self->depth, depth_matrix[_current_module_str], _current_module_str);
                printf("\t\tIf this behavior is unexpected, add the syscall '%s' to your list. The policy that blocked this syscall is logged above the stackstrace.\r\n", probefunc);
                stop();
                printf("\t\tKILLING...\r\n");
                system("\t\tkill -9 %d", pid);
                printf("\t\tKILLED.\r\n");
                printf("\t####################\r\n");
                exit(-1);