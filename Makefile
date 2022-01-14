k3s:
	ansible-playbook k3s.yaml --ask-vault-pass

knative:
	ansible-playbook knative.yaml --ask-vault-pass