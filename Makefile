HOME=~

install: clean janus link

janus:
	@echo "installing janus..."
	@curl -Lo- https://bit.ly/janus-bootstrap | bash

link:
	@echo "linking files..."
	@ln -fs `pwd`/plugins/ $(HOME)/.janus
	@ln -fs `pwd`/vimrc $(HOME)/.vimrc.after
	@ln -fs `pwd`/gvimrc $(HOME)/.gvimrc.after

update:
	@echo "updating dependencies..."
	@git submodule -q foreach git pull -q origin master
	@cd $(HOME)/.vim; rake

backup:
	@echo "backing up..."
	@cp -f $(HOME)/.gvimrc.after $(HOME)/.gvimrc.after.backed 2>/dev/null || true
	@cp -f $(HOME)/.vimrc.after $(HOME)/.vimrc.after.backed 2>/dev/null || true
	@cp -r $(HOME)/.janus $(HOME)/.janus.backed 2>/dev/null || true

clean:
	@make backup
	@rm -rf $(HOME)/.gvimrc.after $(HOME)/.gvimrc.after $(HOME)/.janus

.PHONY: install link update
