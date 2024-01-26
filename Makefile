VAR1 = /opt/arm-linux-gnu

all: stage1 stage2

$(VAR1)/foo.txt:
  date > $(VAR1)/foo.txt

stage1: $(VAR1)/foo.txt

$(VAR1)/bar.txt:
  date > $(VAR1)/bar.txt

stage2: stage1 $(VAR1)/bar.txt
