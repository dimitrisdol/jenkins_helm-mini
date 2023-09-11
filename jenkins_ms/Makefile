VERSION := 1.0.1
DOCKER = docker
REGISTRY := nexus
WHO := jenkins
PASSWORD := admin
NEXUS_PORT := 32003
IMG_BASENAME = my-jenkins
LOCAL_IMG := $(REGISTRY):$(NEXUS_PORT)/$(DOCKER)/$(IMG_BASENAME)
IMG_TAG ?= $(VERSION)

.PHONY: all
all: image login-custom-docker push-image-reg

.PHONY: image
image:
	$(DOCKER) build --no-cache -f ./Dockerfile \
		--build-arg VERSION=$(VERSION) -t $(LOCAL_IMG):$(IMG_TAG) .
	$(DOCKER) image prune --force --filter label=stage=builder

.PHONY: login-custom-docker

login-custom-docker:
	$(DOCKER) login --username $(WHO) --password $(PASSWORD) $(REGISTRY):$(NEXUS_PORT)
        
.PHONY: push-image-reg

push-image-reg:
	$(DOCKER) push $(LOCAL_IMG):$(IMG_TAG)

.PHONY: clean-image clean-local clean
clean: clean-local clean-image
clean-local:
	-$(RM) -v $(BIN)
clean-image:
	-$(DOCKER) rmi $(LOCAL_IMG):$(IMG_TAG)
