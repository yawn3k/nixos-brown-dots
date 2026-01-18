function Linemode:custom()
local mod_time = self._file.cha.mtime
local date_str = ""
if mod_time and mod_time > 0 then
  local file_ts = math.floor(mod_time)
date_str = string.format("%d:%s %d/%d %s",
  tonumber(os.date("%H", file_ts)),
  os.date("%M", file_ts),
  tonumber(os.date("%d", file_ts)),
  tonumber(os.date("%m", file_ts)),
  os.date("%y", file_ts)
)
end
local size_str = (self._file:size() and ya.readable_size(self._file:size())) or "-"
if date_str == "" then
  return size_str
end
  return size_str .. " " .. date_str
end
