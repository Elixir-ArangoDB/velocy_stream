defmodule VelocyStream do
  @moduledoc false

  def pack(message, message_id \\ 0) when is_integer(message_id) do
    length = IO.iodata_length(message) + 16
    chunks = <<3, 0, 0, 0>>
    [<<length::little-unsigned-size(32)>>, chunks, <<message_id::size(64)>>, message]
  end

  def unpack(<<_length::little-unsigned-size(32), _chunks::size(32), message_id::size(64), message::binary>>) do
    {message, message_id}
  end
end
