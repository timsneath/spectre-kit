import SpectreKit

func main() {
    let console = Console()
    console.writeLine()
    console.markupLine(
        "Usage: [grey]dotnet [blue]run[/] [[options]] [[[[--]] <additional arguments>...]]]][/]")
    console.writeLine()

    let grid = Grid()
    grid.addColumn(GridColumn().noWrap())
    grid.addColumn(GridColumn().padLeft(2))
    grid.addRow("Options:")
    grid.addRow("  [blue]-h[/], [blue]--help[/]", "Show command line help.")
    grid.addRow(
        "  [blue]-c[/], [blue]--configuration[/] <CONFIGURATION>", "The configuration to run for.")
    grid.addRow(
        "  [blue]-v[/], [blue]--verbosity[/] <LEVEL>", "Set the [grey]MSBuild[/] verbosity level.")

    console.write(grid)
}
