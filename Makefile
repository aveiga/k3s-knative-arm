pre-requisites:
	ansible-playbook pre-requisites.yaml --ask-vault-pass

k3s:
	ansible-playbook k3s.yaml --ask-vault-pass

knative:
	ansible-playbook knative.yaml --ask-vault-pass

magic-dns:
	ansible-playbook magic-dns.yaml --ask-vault-pass
	
test:
	ansible-playbook test-deployment.yaml --ask-vault-pass

all: pre-requisites k3s knative magic-dns test