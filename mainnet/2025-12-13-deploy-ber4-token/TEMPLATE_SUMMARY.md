# Template Deployment Token ber4 - Ringkasan Lengkap

## Struktur Direktori

```
mainnet/2025-12-13-deploy-ber4-token/
├── script/
│   └── DeployBer4Token.s.sol    # Script deployment token
├── foundry.toml                  # Konfigurasi Foundry
├── Makefile                      # Perintah make untuk deployment
├── README.md                     # Dokumentasi lengkap
├── .env.example                 # Template file environment variables
└── .env                         # File environment (buat dari .env.example)
```

## File-File Template

### 1. script/DeployBer4Token.s.sol
Script utama untuk deploy token ERC20 ber4 dengan:
- Solidity 0.8.31 (versi terbaru)
- Token name: "ber4"
- Token symbol: "ber4"
- Initial supply: 1,000,000 tokens (1M * 10^18)
- Mint ke deployer address

### 2. foundry.toml
Konfigurasi Foundry dengan:
- Solidity compiler: 0.8.31
- Optimizer enabled
- Remappings untuk dependencies

### 3. Makefile
Perintah untuk:
- `make simulate` - Simulasi deployment
- `make deploy` - Deploy token ke network

### 4. README.md
Dokumentasi lengkap dengan instruksi step-by-step

### 5. .env.example
Template untuk environment variables yang diperlukan

## Cara Menggunakan

1. **Copy .env.example ke .env dan isi:**
   ```bash
   cp .env.example .env
   # Edit .env dengan nilai yang sesuai
   ```

2. **Install dependencies:**
   ```bash
   forge install OpenZeppelin/openzeppelin-contracts
   ```

3. **Simulate (opsional):**
   ```bash
   make simulate
   ```

4. **Deploy:**
   ```bash
   make deploy
   ```

## Spesifikasi Token

- **Nama**: ber4
- **Simbol**: ber4
- **Decimals**: 18
- **Initial Supply**: 1,000,000 tokens
- **Tipe**: ERC20 L2 Native (tanpa L1 counterpart)
- **Network**: Base Mainnet


