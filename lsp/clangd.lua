
  -- some settings can only passed as commandline flags, see `clangd --help`
  local clangd_flags = {
    "--background-index=true",
    "--fallback-style=LLVM",
    "--all-scopes-completion",
    "--clang-tidy",
    "--log=error",
    "--suggest-missing-includes",
    "--cross-file-rename",
    "--completion-style=detailed",
    "--pch-storage=memory",   -- could also be disk
    "--folding-ranges",
    "--enable-config",        -- clangd 11+ supports reading from .clangd configuration file
    "--offset-encoding=utf-16", --temporary fix for null-ls
    -- "--limit-references=1000",
    -- "--limit-resutls=1000",
    -- "--malloc-trim",
    "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
    "--header-insertion=never",
    --
    -- Note query-driver is meant to be used for arm compliers etc
    -- https://releases.llvm.org/10.0.0/tools/clang/tools/extra/docs/clangd/Configuration.html
    --
    -- "--query-driver=/home/kb/opt/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/bin/arm-none-eabi*, /home/kb/opt/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi/arm-none-eabi/include/**, /home/kb/opt/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi/arm-none-eabi/include/newlib-nano/*"
    "--query-driver=/home/kb/opt/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/bin/arm-none-eabi**"
  }

return {
  cmd = { 'clangd', unpack(clangd_flags) },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cpp', 'h', 'hpp'},
}

