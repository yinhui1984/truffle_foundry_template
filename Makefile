
GANACHE=/Users/zhouyinhui/Library/pnpm/ganache
FORK_URL="REPLACE_WITH_YOUR_RPC"
FORK_BLOCKNUMBER=22315679


clean:
	rm -rf ./build/*
	rm -rf ./cache/*
	rm -rf ./out/*

# openzeppein:
# 	forge install OpenZeppelin/openzeppelin-contracts --no-commit

build:
	forge build
	truffle compile 

# https://ethereum.stackexchange.com/questions/72036/migrations-hit-an-invalid-opcode-while-deploying-on-deploy-migrations-sol-with
net:
	@echo "\033[0;31m"
	@echo "一定要使用最新版，大于等于 ganache v7.8.0 (@ganache/cli: 0.9.0, @ganache/core: 0.9.0)"
	@echo "\033[0m"
	$(GANACHE) --fork.url $(FORK_URL)  --fork.blockNumber $(FORK_BLOCKNUMBER)


deploy:
	truffle migrate --reset 

forge_test:
	forge test -C "test_forge/" -vvv

truffle_test:
	@echo "\033[0;31m"
	@echo "请确保合约已经部署，这和forge不一样"
	@echo "\033[0m"
	truffle test


debug:
	@echo "\033[0;31m"
	@echo "节点需要使用ganache（而不是anvil），不然不会提供源代码信息"
	@echo "\033[0m"
	truffle test --debug --show-events -x 