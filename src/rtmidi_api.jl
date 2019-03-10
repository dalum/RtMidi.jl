# Julia wrapper for header: /home/evey/.julia/dev/RtMidi/deps/rtmidi/RtMidi.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /home/evey/.julia/dev/RtMidi/deps/rtmidi/rtmidi_c.h
# Automatically generated using Clang.jl wrap_c


function rtmidi_get_compiled_api(apis, apis_size)
    ccall((:rtmidi_get_compiled_api, librtmidi), Cint, (Ptr{RtMidiApi}, UInt32), apis, apis_size)
end

function rtmidi_error(type, errorString)
    ccall((:rtmidi_error, librtmidi), Cvoid, (RtMidiErrorType, Cstring), type, errorString)
end

function rtmidi_open_port(device, portNumber, portName)
    ccall((:rtmidi_open_port, librtmidi), Cvoid, (RtMidiPtr, UInt32, Cstring), device, portNumber, portName)
end

function rtmidi_open_virtual_port(device, portName)
    ccall((:rtmidi_open_virtual_port, librtmidi), Cvoid, (RtMidiPtr, Cstring), device, portName)
end

function rtmidi_close_port(device)
    ccall((:rtmidi_close_port, librtmidi), Cvoid, (RtMidiPtr,), device)
end

function rtmidi_get_port_count(device)
    ccall((:rtmidi_get_port_count, librtmidi), UInt32, (RtMidiPtr,), device)
end

function rtmidi_get_port_name(device, portNumber)
    ccall((:rtmidi_get_port_name, librtmidi), Cstring, (RtMidiPtr, UInt32), device, portNumber)
end

function rtmidi_in_create_default()
    ccall((:rtmidi_in_create_default, librtmidi), RtMidiInPtr, ())
end

function rtmidi_in_create(api, clientName, queueSizeLimit)
    ccall((:rtmidi_in_create, librtmidi), RtMidiInPtr, (RtMidiApi, Cstring, UInt32), api, clientName, queueSizeLimit)
end

function rtmidi_in_free(device)
    ccall((:rtmidi_in_free, librtmidi), Cvoid, (RtMidiInPtr,), device)
end

function rtmidi_in_get_current_api(device)
    ccall((:rtmidi_in_get_current_api, librtmidi), RtMidiApi, (RtMidiPtr,), device)
end

function rtmidi_in_set_callback(device, callback, userData)
    ccall((:rtmidi_in_set_callback, librtmidi), Cvoid, (RtMidiInPtr, RtMidiCCallback, Ptr{Cvoid}), device, callback, userData)
end

function rtmidi_in_cancel_callback(device)
    ccall((:rtmidi_in_cancel_callback, librtmidi), Cvoid, (RtMidiInPtr,), device)
end

function rtmidi_in_ignore_types(device, midiSysex, midiTime, midiSense)
    ccall((:rtmidi_in_ignore_types, librtmidi), Cvoid, (RtMidiInPtr, Bool, Bool, Bool), device, midiSysex, midiTime, midiSense)
end

function rtmidi_in_get_message(device, message, size)
    ccall((:rtmidi_in_get_message, librtmidi), Cdouble, (RtMidiInPtr, Ptr{Cuchar}, Ptr{Csize_t}), device, message, size)
end

function rtmidi_out_create_default()
    ccall((:rtmidi_out_create_default, librtmidi), RtMidiOutPtr, ())
end

function rtmidi_out_create(api, clientName)
    ccall((:rtmidi_out_create, librtmidi), RtMidiOutPtr, (RtMidiApi, Cstring), api, clientName)
end

function rtmidi_out_free(device)
    ccall((:rtmidi_out_free, librtmidi), Cvoid, (RtMidiOutPtr,), device)
end

function rtmidi_out_get_current_api(device)
    ccall((:rtmidi_out_get_current_api, librtmidi), RtMidiApi, (RtMidiPtr,), device)
end

function rtmidi_out_send_message(device, message, length)
    ccall((:rtmidi_out_send_message, librtmidi), Cint, (RtMidiOutPtr, Ptr{Cuchar}, Cint), device, message, length)
end
