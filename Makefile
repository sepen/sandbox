MYPATH = /opt/arm-linux-gnu

all: step1 step2

$(MYPATH):
  mkdir -p $(MYPATH)

# ----- step 1 ------

$(MYPATH)/step1.txt: $(MYPATH)
  date > $(MYPATH)/step1.txt

step1: $(MYPATH)/step1.txt

# ----- step 2 ------

$(MYPATH)/step2.txt: $(MYPATH)
  date > $(MYPATH)/step2.txt

step2: step1 $(MYPATH)/step2.txt
