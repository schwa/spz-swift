# spz-swift

Quick and dirty Swift(C++) wrapper around Niantic's SPZ gaussian splat library (<https://github.com/nianticlabs/spz.git).

(Don't forget to do a git submodule update --init --recursive after cloning this repo or clone it with --recursive).

Caveat: the spz library can't handle comments in .ply files when importing (see <https://github.com/nianticlabs/spz/issues/19>)
