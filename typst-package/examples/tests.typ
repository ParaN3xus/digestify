#import "@preview/digestify:0.1.0": *

#let test-case = bytes(
  "你说得对，但是《原神》是由米哈游自主研发的一款全新开放世界冒险游戏。游戏发生在一个被称作「提瓦特」的幻想世界，在这里，被神选中的人将被授予「神之眼」，导引元素之力。你将扮演一位名为「旅行者」的神秘角色，在自由的旅行中邂逅性格各异、能力独特的同伴们，和他们一起击败强敌，找回失散的亲人；同时，逐步发掘「原神」的真相。",
)

#let test-md4() = {
  assert(bytes-to-hex(md4(test-case)) == "f7c01d01ba9131dad2cb75b99931856e")
}

#let test-md5() = {
  assert(bytes-to-hex(md5(test-case)) == "cf6a1693cc7b2a5cf8871ed7bc55339c")
}

#let test-sha1() = {
  assert(bytes-to-hex(sha1(test-case)) == "242608941a0e258a557f61195b3194ccd7a5b299")
}

#let test-sha224() = {
  assert(bytes-to-hex(sha224(test-case)) == "3e9acf9d51ade3acc65209a1f0adcfe3c6c2b37d3d32b48751dccd50")
}

#let test-sha256() = {
  assert(bytes-to-hex(sha256(test-case)) == "84e7fd04f0fc0b1097e17e6ee55a1989b728d9128f6fb52c2f51a2487cdc611f")
}

#let test-sha384() = {
  assert(
    bytes-to-hex(sha384(test-case))
      == "565e63ffe8d33eb27746823c130d5a20f5e9ec7108450a4573a2817364e62750a19a8b1a0691a410b92bfae86fd49a68",
  )
}

#let test-sha512() = {
  assert(
    bytes-to-hex(sha512(test-case))
      == "146140ac17bae7d0a9d1ed4b1a742d0354584b425d13463d63fc25e6e4cf2242309b6efcd8bfd9e7786aeda081f479efed722edf6a39d59d5230c4c5a71f2ad4",
  )
}
