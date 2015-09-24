require "./spec-helper"

describe "presents a problem", ->
  Given -> @browser.navigateTo '/'
  When  -> @browser.click('.new-problem')
  Then  -> @browser.assert.elementHasText('.latest-problem', /\d+ [-+*/] \d+/)
