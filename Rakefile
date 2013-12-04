namespace :antlr do
  task :generate do
    `antlr4ruby -o lib lib/Entity.g`
  end
end

namespace :windows do
  namespace :compiler do
    task :run do
      `vsvars32.bat & cl temp.cpp`
    end

    task :clean do
      `del *.exe`
      `del *.obj`
    end
  end
end