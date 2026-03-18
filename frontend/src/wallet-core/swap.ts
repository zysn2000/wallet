export function buildSwapPayload(from: string, to: string, amount: string) {
  // Placeholder payload builder for MVP
  return {
    from,
    to,
    amount,
    hash: '0xswapplaceholder' + Math.random().toString(16).substring(2)
  }
}
