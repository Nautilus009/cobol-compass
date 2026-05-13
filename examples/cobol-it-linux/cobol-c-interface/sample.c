#include <stddef.h>

int sample_helper(char *buffer, int length, int *status)
{
    if (buffer == NULL || status == NULL || length < 0) {
        return 1;
    }

    *status = 0;
    return 0;
}

