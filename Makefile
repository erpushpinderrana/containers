build: base awscli kubectl kubebuilder

base:
	cd base && docker build -t nickschuch/base:latest .

kubebuilder:
	cd kubebuilder/v2 && docker build -t nickschuch/kubebuilder:v2 .

kubectl:
	cd kubectl && docker build -t nickschuch/kubectl:latest .

awscli:
	cd awscli && docker build -t nickschuch/awscli:latest .

.PHONY: *