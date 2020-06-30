%dw 2.0
import * from dw::test::Asserts
---
attributes must [
  beObject(),
  $[*"reasonPhrase"] must haveSize(1),
  $[*"statusCode"] must haveSize(1),
  $[*"reasonPhrase"][0] must equalTo("OK"),
  $[*"statusCode"][0] must equalTo(200)
]