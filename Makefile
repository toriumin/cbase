


PROJNAME := myprog
LINKLIBS := -lm

SRCFILES := $(wildcard *.c)
OBJFILES := $(patsubst %.c,%.o,$(SRCFILES))
DEPFILES := $(patsubst %.c,%.d,$(SRCFILES))

WARNINGS := -Wall -Wextra -pedantic -Wshadow -Wpointer-arith -Wcast-align \
            -Wwrite-strings -Wmissing-declarations \
            -Wredundant-decls -Wnested-externs -Winline \
            -Wuninitialized -Wconversion -Wstrict-prototypes \
			-Wno-unused-parameter
CFLAGS := -O2 -std=c11 -march=native $(WARNINGS)


.PHONY: all clean

all: $(PROJNAME)

clean:
	$(RM) $(wildcard $(OBJFILES) $(DEPFILES) $(PROJNAME))

-include $(DEPFILES)

$(PROJNAME): $(OBJFILES)
	$(CC) -o $@ $(LDFLAGS) $(CFLAGS) $^ $(LINKLIBS)

%.o: %.c Makefile
	$(CC) $(CFLAGS) -MMD -MP -c $< -o $@
