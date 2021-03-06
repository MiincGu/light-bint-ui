describe "One Light UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('light-bint-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('light-bint-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('light-bint-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-light-bint-ui-layoutmode')).toBe 'auto'

    atom.config.set('light-bint-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-light-bint-ui-layoutmode')).toBe 'spacious'
