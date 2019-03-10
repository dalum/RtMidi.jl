module RtMidi

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("RtMidi was not build properly. Please run Pkg.build(\"RtMidi\").")
end
include(depsjl_path)

using CEnum

include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "rtmidi_common.jl"))
include(joinpath(@__DIR__, "rtmidi_api.jl"))

using InlineExports

export
    MidiIn,
    MidiMessage,
    MidiOut,

    closeport!,
    getmessage,
    ports,
    openport!,
    sendmessage

const MidiMessage = Vector{UInt8}

include("devices.jl")
include("functions.jl")

end # module
