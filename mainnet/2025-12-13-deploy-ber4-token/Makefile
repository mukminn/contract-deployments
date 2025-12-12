include ../../Makefile
include ../../Multisig.mk

include ../.env
include .env

RPC_URL = $(L2_RPC_URL)
SCRIPT_NAME = DeployBer4Token

.PHONY: deploy
deploy:
	forge script script/DeployBer4Token.s.sol:DeployBer4Token \
		--rpc-url $(RPC_URL) \
		--broadcast \
		--verify \
		--etherscan-api-key $(ETHERSCAN_API_KEY) \
		-vvvv

.PHONY: simulate
simulate:
	forge script script/DeployBer4Token.s.sol:DeployBer4Token \
		--rpc-url $(RPC_URL) \
		-vvvv


