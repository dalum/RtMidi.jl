abstract type MidiDevice end

mutable struct MidiIn <: MidiDevice
    ptr::Ptr{RtMidiInPtr}
    buffer::MidiMessage
    buffer_size::Ref{Csize_t}
    callback

    function MidiIn(; buffer_size = 16)
        ptr = rtmidi_in_create_default()
        buffer = fill(Cuchar(0), buffer_size)
        buffer_size = Ref{Csize_t}(sizeof(buffer))
        self = new(ptr, buffer, buffer_size)
        finalizer(destroy!, self)
        return self
    end
end

destroy!(m::MidiIn) = rtmidi_in_free(m.ptr)

mutable struct MidiOut <: MidiDevice
    ptr::Ptr{RtMidiOutPtr}

    function MidiOut()
        ptr = rtmidi_out_create_default()
        self = new(ptr)
        finalizer(destroy!, self)
        return self
    end
end

destroy!(m::MidiOut) = rtmidi_out_free(m.ptr)
