
DISKUTIL = $(shell which diskutil)

MACOS = HFS+ macos 14g

UBUNTU = EXFAT restic 5g

RESTIC = APFS workspace R

default: unmount erase partition

unmount:
	DISKUTIL unmountDisk $(DRIVE)

erase:
	DISKUTIL eraseDisk HFS+ $(NAME) $(DRIVE)

.PHONY: $(DRIVE) $(MACOS) $(UBUNTU) $(RESTIC)

partition: $(MACOS) $(UBUNTU) $(RESTIC)
	DISKUTIL partitionDisk $(DRIVE) GPT $?

.PHONY: $(NAME)
user: $(NAME)
	docker exec -it tape_server_1 create_user $?


