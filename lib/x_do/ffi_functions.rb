require 'ffi'

# :nodoc: namespace
class XDo

# :nodoc: function attachments
module FFILib
  attach_function :xdo_new, [:string], :pointer
  attach_function :xdo_version, [], :string
  attach_function :xdo_free, [:pointer], :void
  attach_function :xdo_get_active_window, [:pointer, :pointer],
                                          XDo::FFILib::Status
  attach_function :xdo_get_focused_window, [:pointer, :pointer],
                                         XDo::FFILib::Status
  attach_function :xdo_get_focused_window_sane, [:pointer, :pointer],
                                              XDo::FFILib::Status

  attach_function :xdo_get_pid_window, [:pointer, :window], :int

  attach_function :xdo_search_windows, [:pointer, :pointer, :pointer, :pointer],
                                      XDo::FFILib::Status

  attach_function :xdo_activate_window, [:pointer, :window], XDo::FFILib::Status
  attach_function :xdo_focus_window, [:pointer, :window], XDo::FFILib::Status
  attach_function :xdo_raise_window, [:pointer, :window], XDo::FFILib::Status

  attach_function :xdo_get_window_name, [:pointer, :window, :pointer, :pointer,
                                         :pointer], XDo::FFILib::Status
  attach_function :xdo_get_window_location, [:pointer, :window, :pointer,
                                             :pointer, :pointer],
                                            XDo::FFILib::Status
  attach_function :xdo_get_window_size, [:pointer, :window, :pointer, :pointer],
                                        XDo::FFILib::Status
  attach_function :xdo_move_window, [:pointer, :window, :int, :int],
                                    XDo::FFILib::Status
  attach_function :xdo_set_window_size, [:pointer, :window, :int, :int, :int],
                                       XDo::FFILib::Status
  attach_function :xdo_get_mouse_location, [:pointer, :pointer, :pointer, :pointer],
                                      XDo::FFILib::Status
  attach_function :xdo_move_mouse, [:pointer, :int, :int, :int],
                                  XDo::FFILib::Status
  attach_function :xdo_move_mouse_relative, [:pointer, :int, :int],
                                           XDo::FFILib::Status
  attach_function :xdo_wait_for_mouse_move_from, [:pointer, :int, :int],
                                                 XDo::FFILib::Status
  attach_function :xdo_wait_for_mouse_move_to, [:pointer, :int, :int],
                                               XDo::FFILib::Status

  attach_function :xdo_move_mouse_relative_to_window, [:pointer, :window, :int,
                                                      :int], XDo::FFILib::Status
  attach_function :xdo_mouse_down, [:pointer, :window, :int], XDo::FFILib::Status
  attach_function :xdo_mouse_up, [:pointer, :window, :int], XDo::FFILib::Status
  attach_function :xdo_click_window, [:pointer, :window, :int], XDo::FFILib::Status

  attach_function :xdo_enter_text_window, [:pointer, :window, :string, :int],
                             XDo::FFILib::Status
  attach_function :xdo_send_keysequence_window, [:pointer, :window, :string, :int],
                                    XDo::FFILib::Status
  attach_function :xdo_send_keysequence_window_down, [:pointer, :window, :string, :int],
                                         XDo::FFILib::Status
  attach_function :xdo_send_keysequence_window_up, [:pointer, :window, :string, :int],
                                       XDo::FFILib::Status
end  # module XDo::FFILib

end  # namespace XDo
