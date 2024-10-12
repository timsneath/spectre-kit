import Testing

@testable import SpectreKit

struct GridTests {
    @Test func renderGrid() {
        // Given
        let console = TestConsole()
        let grid = Grid()
        grid.addColumns(2)
        grid.addRow("Foo", "Bar")
        grid.addEmptyRow()
        grid.addRow("Qux", "Corgi")
        grid.addEmptyRow()

        // When
        let result = console.write(grid)

        // Then
        #expect(
            result == 
            "Foo   Bar     \n" +
            "              \n" +
            "Qux   Corgi   \n" +
            "              \n")
    }

    @Test func renderJustifiedGrid() {
        // Given
        let console = TestConsole()
        let grid = Grid()
        grid.addColumn(GridColumn().rightAligned())
        grid.addColumn(GridColumn().centered())
        grid.addColumn(GridColumn().leftAligned())
        grid.addRow("Foo", "Bar", "Baz")
        grid.addRow("Qux", "Corgi", "Waldo")
        grid.addRow("Grault", "Garply", "Fred")

        // When
        let result = console.write(grid)

        // Then
        #expect(
            result ==
            "   Foo    Bar     Baz     \n" +
            "   Qux   Corgi    Waldo   \n" +
            "Grault   Garply   Fred    \n")
    }

    @Test func renderPaddedGrid() {
        // Given
        let console = TestConsole()
        let grid = Grid()
        grid.addColumn(GridColumn().padding(left: 3, top: 0, right: 0, bottom: 0))
        grid.addColumn(GridColumn().padding(left: 0, top: 0, right: 0, bottom: 0))
        grid.addColumn(GridColumn().padding(left: 0, top: 0, right: 3, bottom: 0))
        grid.addRow("Foo", "Bar", "Baz")
        grid.addRow("Qux", "Corgi", "Waldo")
        grid.addRow("Grault", "Garply", "Fred")

        // When
        let result = console.write(grid)

        // Then
        #expect(
            result ==
            "   Foo    Bar    Baz   \n" +
            "   Qux    Corgi  Waldo \n" +
            "   Grault Garply Fred  \n")
    }
}
