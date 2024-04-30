return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Manager',
          text_align = 'left',
          highlight = 'Directory',
        },
      },
    },
  },
}
