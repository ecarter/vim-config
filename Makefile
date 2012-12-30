USER_HOME=$(HOME)

install: clean janus init link

janus:
	@echo "installing janus..."
	@curl -Lo- https://bit.ly/janus-bootstrap | bash

link:
	@echo "linking files..."
	@ln -fs `pwd`/plugins/ $(USER_HOME)/.janus
	@ln -fs `pwd`/vimrc $(USER_HOME)/.vimrc.after
	@ln -fs `pwd`/gvimrc $(USER_HOME)/.gvimrc.after

init:
	@echo "initializing dependencies..."
	@git submodule init
	@git submodule update

update:
	@echo "updating dependencies..."
	@git submodule -q foreach git pull -q origin master
	@cd $(USER_HOME)/.vim; rake

backup:
	@echo "backing up..."
	@cp -f $(USER_HOME)/.gvimrc.after $(USER_HOME)/.gvimrc.after.backed 2>/dev/null || true
	@cp -f $(USER_HOME)/.vimrc.after $(USER_HOME)/.vimrc.after.backed 2>/dev/null || true
	@cp -r $(USER_HOME)/.janus $(USER_HOME)/.janus.backed 2>/dev/null || true

clean:
	@make backup
	@rm -rf $(USER_HOME)/.gvimrc.after $(USER_HOME)/.gvimrc.after $(USER_HOME)/.janus

.PHONY: install link update
