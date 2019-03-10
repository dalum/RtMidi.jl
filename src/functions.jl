function ports(m::MidiDevice)
    n_ports = rtmidi_get_port_count(m.ptr)
    return [unsafe_string(rtmidi_get_port_name(m.ptr, UInt(port))) for port in 0:(n_ports - 1)]
end

function openport!(m::MidiDevice, n::Integer, name::String)
    rtmidi_open_port(m.ptr, n - 1, name)
end

function closeport!(m::MidiDevice)
    rtmidi_close_port(m.ptr)
end

function getmessage(m::MidiIn)
    m.buffer_size[] = sizeof(m.buffer)
    deltatime = rtmidi_in_get_message(m.ptr, m.buffer, m.buffer_size)
    return m.buffer[1:m.buffer_size[]], deltatime
end

function sendmessage(m::MidiOut, msg::MidiMessage)
    rtmidi_out_send_message(m.ptr, msg, sizeof(msg))
end
