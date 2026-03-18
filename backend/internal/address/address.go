package address

type AddressEntry struct {
  ID      string
  Wallet  string
  Label   string
  Address string
}

func ListAddresses(wallet string) []AddressEntry {
  // Placeholder data
  return []AddressEntry{
    {ID: "1", Wallet: wallet, Label: "Primary", Address: "0xABCDEF"},
  }
}
