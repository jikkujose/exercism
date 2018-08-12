export default function toRoman(number) {
  const unitPlace = number % 10
  const tensPlace = Math.floor(number / 10) % 10
  const hundredsPlace = Math.floor(number / 100) % 10
  const thousandsPlace = Math.floor(number / 1000) % 10

  return `${thousands(thousandsPlace)}${hundreds(hundredsPlace)}${tens(
    tensPlace
  )}${units(unitPlace)}`
}

const repeat = (n, c) =>
  Array(n)
    .fill(c)
    .join("")

const units = number => {
  switch (number) {
    case 1:
    case 2:
    case 3:
      return repeat(number, "I")
    case 4:
      return "IV"
    case 5:
    case 6:
    case 7:
    case 8:
      return `V${repeat(number - 5, "I")}`
    case 9:
      return "IX"
    case 10:
      return "X"
    default:
      return ""
  }
}

const tens = number => {
  switch (number) {
    case 1:
    case 2:
    case 3:
      return repeat(number, "X")
    case 4:
      return "XL"
    case 5:
    case 6:
    case 7:
    case 8:
      return `L${repeat(number - 5, "X")}`
    case 9:
      return "XC"
    default:
      return ""
  }
}

const hundreds = number => {
  switch (number) {
    case 1:
    case 2:
    case 3:
      return repeat(number, "C")
    case 4:
      return "CD"
    case 5:
    case 6:
    case 7:
    case 8:
      return `D${repeat(number - 5, "C")}`
    case 9:
      return "CM"
    default:
      return ""
  }
}

const thousands = number => {
  switch (number) {
    case 1:
    case 2:
    case 3:
      return repeat(number, "M")
    default:
      return ""
  }
}
