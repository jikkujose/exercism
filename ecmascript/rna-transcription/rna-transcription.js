export default class Transcriptor {
  complement(n) {
    switch (n) {
      case "C":
        return "G"
      case "G":
        return "C"
      case "A":
        return "U"
      case "T":
        return "A"
      case "":
        return ""
      default:
        throw "Invalid input DNA."
    }
  }

  toRna(string) {
    return string
      .split("")
      .map(this.complement)
      .join("")
  }
}
