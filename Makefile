# Joruri Tech

JTECH_NAME=jTech
JTECH_VOLUME=$(PWD)/clusters/$(JTECH_NAME)/volumes/main:/data

jTech-create:
	k3d cluster create $(JTECH_NAME) -v $(JTECH_VOLUME) -c ./clusters/$(JTECH_NAME)/k3d.yaml
jTech-up:
	k3d cluster start $(JTECH_NAME)
jTech-down:
	k3d cluster stop $(JTECH_NAME)
jTech-remove:
	k3d cluster delete $(JTECH_NAME)
jTech-switch-context:
	kubectl config use-context k3d-$(JTECH_NAME)
# Buzz Env

BUZZ_NAME=buzz
BUZZ_VOLUME=$(PWD)/clusters/$(BUZZ_NAME)/volumes/main:/data

buzz-create:
	k3d cluster create $(BUZZ_NAME) -v $(BUZZ_VOLUME) -c ./clusters/$(BUZZ_NAME)/k3d.yaml
buzz-up:
	k3d cluster stop $(BUZZ_NAME)
buzz-down:
	k3d cluster start $(BUZZ_NAME)
buzz-remove:
	k3d cluster delete $(BUZZ_NAME)
buzz-switch-context:
	kubectl config use-context k3d-$(BUZZ_NAME)