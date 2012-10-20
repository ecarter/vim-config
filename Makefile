
install: clean janus link

janus:
	@echo "installing janus..."
	@curl -Lo- https://bit.ly/janus-bootstrap | bash

link:
	@echo "linking files..."
	@ln -fs `pwd`/.janus ~/.janus
	@ln -fs `pwd`/.vimrc.after ~/.vimrc.after
	@ln -fs `pwd`/.gvimrc.after ~/.gvimrc.after

backup:
	@echo "backing up..."
	@cp -f ~/.gvimrc.after ~/.gvimrc.after.backed 2>/dev/null || true
	@cp -f ~/.vimrc.after ~/.vimrc.after.backed 2>/dev/null || true
	@cp -r ~/.janus ~/.janus.backed 2>/dev/null || true

clean:
	@make backup
	@rm -rf ~/.gvimrc.after ~/.gvimrc.after ~/.janus

.PHONY: install link
