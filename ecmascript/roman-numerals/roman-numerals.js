const repeat = (n, c) =>
  Array(n)
    .fill(c)
    .join("")

const tens = number => {
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

const hundreds = number => {
  switch (number) {
    case 1:
    case 2:
    case 3:
      return repeat(number - 1, "X")
    default:
      return ""
  }
}

export default function toRoman(number) {
  const unitPlace = number % 10
  const tensPlace = Math.round(number / 10) % 10

  return `${hundreds(tensPlace)}${tens(unitPlace)}`
}
