# Automatically generated using Clang.jl wrap_c


# Skipping MacroDefinition: RTMIDI_DLL_PUBLIC __attribute__ ( ( visibility ( "default" ) ) )

const RTMIDI_VERSION = "3.0.0"
const RtMidiErrorCallback = Ptr{Cvoid}

struct RtMidiWrapper
    ptr::Ptr{Cvoid}
    data::Ptr{Cvoid}
    ok::Bool
    msg::Cstring
end

const RtMidiPtr = Ptr{RtMidiWrapper}
const RtMidiInPtr = Ptr{RtMidiWrapper}
const RtMidiOutPtr = Ptr{RtMidiWrapper}

@cenum(RtMidiApi,
    RT_MIDI_API_UNSPECIFIED = 0,
    RT_MIDI_API_MACOSX_CORE = 1,
    RT_MIDI_API_LINUX_ALSA = 2,
    RT_MIDI_API_UNIX_JACK = 3,
    RT_MIDI_API_WINDOWS_MM = 4,
    RT_MIDI_API_RTMIDI_DUMMY = 5,
)
@cenum(RtMidiErrorType,
    RT_ERROR_WARNING = 0,
    RT_ERROR_DEBUG_WARNING = 1,
    RT_ERROR_UNSPECIFIED = 2,
    RT_ERROR_NO_DEVICES_FOUND = 3,
    RT_ERROR_INVALID_DEVICE = 4,
    RT_ERROR_MEMORY_ERROR = 5,
    RT_ERROR_INVALID_PARAMETER = 6,
    RT_ERROR_INVALID_USE = 7,
    RT_ERROR_DRIVER_ERROR = 8,
    RT_ERROR_SYSTEM_ERROR = 9,
    RT_ERROR_THREAD_ERROR = 10,
)

const RtMidiCCallback = Ptr{Cvoid}
