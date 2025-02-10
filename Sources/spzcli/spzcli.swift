import spz_cpp

@main
struct SPZCLI {

    static func main() {
        print("Hello world")

        let cloud = spz.loadSplatFromPly("/Users/schwa/Downloads/321_baseline_modified.ply")
        print(cloud)

        print(cloud.numPoints)

        spz.saveSpz(cloud, "test.spz")
    }
}
