# Rong Env

RONG=rong
RONG_VOLUME=$(PWD)/clusters/$(RONG)/volumes/main:/data

rong-create:
	k3d cluster create $(RONG) -v $(RONG_VOLUME) -c ./clusters/$(RONG)/k3d.yaml
rong-up:
	k3d cluster start $(RONG)
rong-down:
	k3d cluster stop $(RONG)
rong-remove:
	k3d cluster delete $(RONG)
rong-switch-context:
	kubectl config use-context k3d-$(RONG)

# Joruri Tech

JTECH=jTech
JTECH_VOLUME=$(PWD)/clusters/$(JTECH)/volumes/main:/data

jTech-create:
	k3d cluster create $(JTECH) -v $(JTECH_VOLUME) -c ./clusters/$(JTECH)/k3d.yaml
jTech-up:
	k3d cluster start $(JTECH)
jTech-down:
	k3d cluster stop $(JTECH)
jTech-remove:
	k3d cluster delete $(JTECH)
jTech-switch-context:
	kubectl config use-context k3d-$(JTECH)

# Buzz Env

BUZZ=buzz
BUZZ_VOLUME=$(PWD)/clusters/$(BUZZ)/volumes/main:/data

buzz-create:
	k3d cluster create $(BUZZ) -v $(BUZZ_VOLUME) -c ./clusters/$(BUZZ)/k3d.yaml
buzz-up:
	k3d cluster start $(BUZZ)
buzz-down:
	k3d cluster stop $(BUZZ)
buzz-remove:
	k3d cluster delete $(BUZZ)
buzz-switch-context:
	kubectl config use-context k3d-$(BUZZ)