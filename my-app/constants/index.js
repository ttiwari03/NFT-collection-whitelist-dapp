export const WHITELIST_CONTRACT_ADDRESS =
	"0x285d2286faF860242846e275f49232b55C2C2319";
export const abi = [
	{
		inputs: [
			{
				internalType: "uint8",
				name: "_maxWhitelistedAddresses",
				type: "uint8",
			},
		],
		stateMutability: "nonpayable",
		type: "constructor",
	},
	{
		inputs: [],
		name: "addAddressToWhitelist",
		outputs: [],
		stateMutability: "nonpayable",
		type: "function",
	},
	{
		inputs: [],
		name: "maxWhitelistedAddresses",
		outputs: [
			{
				internalType: "uint8",
				name: "",
				type: "uint8",
			},
		],
		stateMutability: "view",
		type: "function",
	},
	{
		inputs: [],
		name: "numAddressesWhitelisted",
		outputs: [
			{
				internalType: "uint8",
				name: "",
				type: "uint8",
			},
		],
		stateMutability: "view",
		type: "function",
	},
	{
		inputs: [
			{
				internalType: "address",
				name: "",
				type: "address",
			},
		],
		name: "whitelistedAddresses",
		outputs: [
			{
				internalType: "bool",
				name: "",
				type: "bool",
			},
		],
		stateMutability: "view",
		type: "function",
	},
];
