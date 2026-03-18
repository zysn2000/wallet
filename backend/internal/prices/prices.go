package prices

type Price struct {
  Symbol string
  USD    float64
}

// Placeholder: return fixed prices for MVP
func GetPrices() []Price {
  return []Price{{Symbol: "ETH", USD: 1800.0}, {Symbol: "BTC", USD: 43000.0}, {Symbol: "USDT", USD: 1.0}}
}
