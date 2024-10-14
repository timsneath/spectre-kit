import Foundation
import SpectreKit

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

// console.write(
//     Panel(
//         Table()
//             .addColumns("Foo", "[green]Bar[/]", "Baz")
//             .addRow(Markup("[red]abc[/]"), Text("def"), Markup("[yellow]lol[/]"))
//             .addRow(
//                 Markup("[green bold]Corgi[/]"), Text("jkl"),
//                 Table()
//                     .addColumn("Foo")
//                     .addColumn("Bar")
//                     .addColumn("Baz")
//                     .addRow(Markup("[red]abc[/]"), Text("def"), Markup("[yellow]lol[/]"))
//                     .addRow(Markup("[green bold]Corgi[/]"), Text("jkl"), Markup("[blue]wtf[/]"))
//                     .setBorder(TableBorder.doubleEdge)
//                     .setTitle("A table in a table in a panel")
//                     .setCaption("A [blue]caption[/]")
//             )
//             .setTitle("A table in a panel")
//             .setBorder(TableBorder.rounded)
//     )
//     .setHeader("[white]A panel[/]")
//     .setBorderColor(Color.rgb(255, 128, 0)))
