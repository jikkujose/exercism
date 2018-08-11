const append = (e, count, character) => {
  if (count === 0) {
    return e
  }

  const number = count === 1 ? "" : count
  return `${e}${number}${character}`
}

export function encode(string) {
  const PADDING_CHARACTER = "<PADDING_CHARACTER>"
  let encoded = ""
  let count = 0
  let previous = ""
  const characters = string.split("").concat(PADDING_CHARACTER)

  characters.forEach(c => {
    if (previous !== c) {
      encoded = append(encoded, count, previous)
      count = 0
    }

    count++
    previous = c
  })

  return encoded
}

export function decode(string) {
  let digitString = ""
  const characters = string.split("")
  let number = 0
  let decoded = ""

  characters.forEach(c => {
    if (c.match(/\d/)) {
      digitString += c
    } else {
      const repetition = parseInt(digitString) || 1
      decoded = `${decoded}${Array(repetition)
        .fill(c)
        .join("")}`
      digitString = ""
    }
  })

  return decoded
}
