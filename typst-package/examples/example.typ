#import "@preview/digestify:0.1.0"

#set page(width: auto, height: auto)

#let pack-dict = dictionary(digestify)
#(_ = pack-dict.remove("bytes-to-hex"))

Preamble:
```typ
#import "@preview/digestify:0.1.0": *
```

#table(
  columns: 3,
  [Func], [Source], [Result],
  ..pack-dict
    .values()
    .map(x => {
      let src = "bytes-to-hex(" + repr(x) + "(bytes(\"test\")))"
      (
        raw(repr(x)),
        raw(src),
        raw(eval(src, scope: dictionary(digestify))),
      )
    })
    .flatten(),
)
