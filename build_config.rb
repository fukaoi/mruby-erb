MRuby::Build.new do |conf|
  if ENV['VisualStudioVersion'] || ENV['VSINSTALLDIR']
    toolchain :visualcpp
  else
    toolchain :clang
  end

  conf.enable_debug

  conf.cc.flags << '-DMRB_INT64'

  conf.gembox 'full-core'
  conf.gem File.dirname(__FILE__)
  conf.gem :github => 'mattn/mruby-onig-regexp'
end
