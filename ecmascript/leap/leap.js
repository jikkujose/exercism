export default class Year {
  constructor(year) {
    this.year = year
  }

  isYearDivisibleBy(factor) {
    return this.year % factor === 0
  }

  isLeap() {
    if (this.isYearDivisibleBy(400)) {
      return true
    }

    if (this.isYearDivisibleBy(100)) {
      return false
    }

    if (this.isYearDivisibleBy(4)) {
      return true
    }

    return false
  }
}
