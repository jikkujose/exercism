export default class Transcriptor {
  complement(nucleotide) {
    const _complement = {
      C: "G",
      G: "C",
      A: "U",
      T: "A",
      "": "",
    }[nucleotide]

    if (!_complement) {
      throw "Invalid input DNA."
    }

    return _complement
  }

  toRna(string) {
    return string
      .split("")
      .map(this.complement)
      .join("")
  }
}
