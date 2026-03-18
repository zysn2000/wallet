<template>
  <section class="p-4 rounded-lg bg-white/10" style="min-height:180px;">
    <h3 class="text-lg font-semibold mb-2">Swap (Skeleton)</h3>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
      <div>
        <label class="block text-sm mb-1">From</label>
        <input class="w-full p-2 rounded bg-black/20" placeholder="Token to swap from" v-model="fromToken" />
      </div>
      <div>
        <label class="block text-sm mb-1">To</label>
        <input class="w-full p-2 rounded bg-black/20" placeholder="Token to swap to" v-model="toToken" />
      </div>
      <div>
        <label class="block text-sm mb-1">Amount</label>
        <input class="w-full p-2 rounded bg-black/20" placeholder="Amount" v-model="amount" />
      </div>
      <div class="self-end">
        <button class="px-4 py-2 bg-indigo-600 text-white rounded" @click="swap">Swap</button>
      </div>
    </div>
    <div class="mt-2 text-xs text-white/70" v-if="swapHash">Swap hash: {{ swapHash }}</div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
import { buildSwapPayload } from '@/wallet-core/swap'

const fromToken = ref('ETH')
const toToken = ref('USDC')
const amount = ref('0')
const swapHash = ref('')

function swap() {
  const payload = buildSwapPayload(fromToken.value, toToken.value, amount.value)
  // In MVP we simulate a swap by generating a placeholder hash
  swapHash.value = payload.hash
}
</script>
