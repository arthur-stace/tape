.PHONY: $(NAME)
user: $(NAME)
	docker exec -it $(CONTAINER) create_user $?
