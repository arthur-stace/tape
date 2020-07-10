
DISKUTIL = $(shell which diskutil)

MACOS = HFS+ macos 12.5g

UBUNTU = EXFAT ubuntu 24g

RESTIC = APFS restic R

default: unmount erase partition

unmount:
	DISKUTIL unmountDisk $(DRIVE)

erase:
	DISKUTIL eraseDisk HFS+ $(NAME) $(DRIVE)

.PHONY: $(DRIVE) $(MACOS) $(UBUNTU) $(RESTIC)

partition: $(MACOS) $(UBUNTU) $(RESTIC)
	DISKUTIL partitionDisk $(DRIVE) GPT $?


	
