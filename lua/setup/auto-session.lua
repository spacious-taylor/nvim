local auto_session = require('auto-session')

auto_session.setup {
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_use_git_branch = true,
}
