import spz_cpp
import Foundation

@main
struct SPZCLI {

    static func main() {

        guard CommandLine.arguments.count == 3 else {
            print("Usage: spzcli INPUT OUTPUT")
            return
        }

        let inputPath = URL(fileURLWithPath: CommandLine.arguments[1])
        let outputPath = URL(fileURLWithPath: CommandLine.arguments[2])

        print(inputPath.pathExtension, outputPath.pathExtension)

        switch (inputPath.pathExtension, outputPath.pathExtension) {
        case ("ply", "spz"):
            let cloud = spz.loadSplatFromPly(std.string(inputPath.path))
            spz.saveSpz(cloud, std.string(outputPath.path))

            let loaded = spz.loadSpz(std.string(outputPath.path))
            print(loaded)


        default:
            print("Unsupported file format \(inputPath.pathExtension) -> \(outputPath.pathExtension)")
            return
        }
    }
}
