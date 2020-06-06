#Makefile

# Linux (default)
RM  = rm .terraform/modules/ -fr
BLAT= rm .terraform/ -fr

# Windows
ifeq ($(OS), Windows_NT)
   RM   = del /Q .terraform\modules\
   BLAT = del /Q .terraform\
endif

.PHONY: all

all: init plan build

init:
	$(RM)
	terraform init -reconfigure

plan: init
	terraform plan -refresh=true

build: init
	terraform apply -auto-approve

check: init
	terraform plan -detailed-exitcode

destroy: init
	terraform destroy -force

docs:
	terraform-docs md . > README.md

valid:
	tflint
	terraform fmt -check=true -diff=true

target:
	@read -p "Enter Module to target:" MODULE;
	terraform apply -target $$MODULE

purge:
	$(BLAT)
	terraform init -reconfigure
