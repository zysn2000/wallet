<template>
  <section class="p-4 rounded-lg bg-white/10" style="min-height:140px;">
    <h3 class="text-lg font-semibold mb-2">Address Book</h3>
    <div class="space-y-2" v-for="(a, idx) in addresses" :key="idx">
      <div class="flex items-center justify-between bg-black/20 p-2 rounded">
        <div>{{ a.label }} - {{ a.address }}</div>
        <button class="text-sm text-blue-300">Edit</button>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
const addresses = ref([
  { label: 'Alice', address: '0xABC...DEF' },
  { label: 'Bob', address: '0x123...456' }
])
</script>
