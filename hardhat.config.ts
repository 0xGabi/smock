import { HardhatUserConfig } from 'hardhat/config'

import '@nomiclabs/hardhat-ethers'
import '@nomiclabs/hardhat-waffle'

import './src/hardhat-plugins/compiler-storage-layout'

const config: HardhatUserConfig = {
  paths: {
    sources: './test/contracts',
  },
  solidity: {
    version: '0.7.0',
    settings: {
      optimizer: { enabled: true, runs: 200 },
    }
  },
}

export default config
