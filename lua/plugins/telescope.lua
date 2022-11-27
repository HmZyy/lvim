local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local previewers = require "telescope.previewers"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local make_entry = require "telescope.make_entry"
local builtin = require "telescope.builtin"

local H = {}

local configs = function(opts)

  local sourced_file = require("plenary.debug_utils").sourced_filepath()
  local base_directory = vim.fn.fnamemodify(sourced_file, ":h:h")
  local general_directory = base_directory .. "/general/"

  local globbed_files = vim.fn.globpath(general_directory, "*", true, true)
  local acceptable_files = {}
  for _, v in ipairs(globbed_files) do
    table.insert(acceptable_files, vim.fn.fnamemodify(v, ":t"))
  end

  pickers
      .new(opts, {
        prompt_title = "Configuration",
        finder = finders.new_table {
          results = acceptable_files,
          entry_maker = function(line)
            return make_entry.set_default_entry_mt({
              ordinal = line,
              display = line,
              filename = general_directory .. line,
            }, opts)
          end,
        },
        previewer = previewers.cat.new(opts),
        sorter = conf.generic_sorter(opts),
        attach_mappings = function(prompt_bufnr)
          actions.select_default:replace(function()
            local selection = action_state.get_selected_entry()
            actions.close(prompt_bufnr)
            local filename = general_directory .. selection.display
            vim.api.nvim_exec(":e " .. filename, true)
          end)

          return true
        end,
      }):find()
end

-- H.dropdown = function()
--   return H.configs(require("telescope.themes").get_dropdown {})
-- end

-- to execute the function
H.config = function()
  builtin.configs = configs
end
return H
