MYPATH = /opt/mypath

all: step1 step2

$(MYPATH):
	mkdir -p $(MYPATH)

# ----- step 1 ------

$(MYPATH)/step1.txt: $(MYPATH)
	@echo "-- Creating $(MYPATH)/step1.txt"
	date > $(MYPATH)/step1.txt

step1: $(MYPATH)/step1.txt

# ----- step 2 ------

$(MYPATH)/step2.txt: $(MYPATH)
	@echo "-- Creating $(MYPATH)/step2.txt"
	date > $(MYPATH)/step2.txt

step2: step1 $(MYPATH)/step2.txt
