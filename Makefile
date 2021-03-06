CFLAGS = -Wall -Os

INCLUDES = -Iinclude -Iexternal

LIBS = -lvinox -lGLESv2 -lEGL -lglfw

SRCS = main.c

OBJS = $(SRCS:.c=.o)

MAIN = bunnymark

.PHONY: depend clean

all: $(MAIN)
	@echo bunnymark has successfully compiled

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJS) *~ $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

#END
