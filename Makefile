CFLAGS = -Os -Wall -fomit-frame-pointer
LDFLAGS = -lm

umc: umc.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

lha: ../umc.lha umc
../umc.lha:
	./make-lha.sh

clean:
	rm -f umc

dist-clean:
	rm -f ../umc.lha
