using BinDeps
using Compat
using Libdl  # For the Windows HACK

@BinDeps.setup

librtmidi = library_dependency("librtmidi")

if Sys.islinux()
    provides(Pacman, "rtmidi", librtmidi)

    @BinDeps.install Dict(
        "librtmidi" => "librtmidi"
    )
end
