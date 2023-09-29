# Get home directory

INCDIR:=include
SRCDIR:=src
OBJDIR:=bin/obj
BINDIR:=bin

CC=g++
CFLAGS=-c --std=c++11 -I$(INCDIR)

all: nepaliconv

SOURCES_CONV:=Ad.cpp  AdData.cpp  Bs.cpp  BsData.cpp  Date.cpp
HEADERS_CONV:=AdData.h  Ad.h  BsData.h  Bs.h  Data.h  Date.h  ex.h  helper.h Ymd.h
OBJECTS_CONV:=$(SOURCES_CONV:.cpp=.o)
FSOURCES_CONV:=$(addprefix $(SRCDIR)/,$(SOURCES_CONV))
FHEADERS_CONV:=$(addprefix $(INCDIR)/,$(HEADERS_CONV))
FOBJECTS_CONV:=$(addprefix $(OBJDIR)/,$(OBJECTS_CONV))
MAINO_CONV:=$(OBJDIR)/nepaliconv.o
EXEC_CONV:=$(BINDIR)/nepaliconv

nepaliconv: $(FHEADERS_CONV) $(EXEC_CONV)
$(EXEC_CONV): $(FOBJECTS_CONV) $(MAINO_CONV)
	$(CC) $(FOBJECTS_CONV) $(MAINO_CONV) -g -o $@ $(LDFLAGS_CONV)


### Common parts to both
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp | $(OBJDIR) $(BINDIR)
	$(CC) -o $@ $< $(CFLAGS) -g

$(OBJDIR): | $(BINDIR)
	mkdir $(OBJDIR)

$(BINDIR):
	mkdir $(BINDIR)

clean:
	rm -rf bin/*
install:
	mkdir "/usr/local/share/nepaliconv" -p
	cp "bin/nepaliconv" "/usr/local/bin" -f

uninstall:
	rm /usr/share/nepaliconv -f