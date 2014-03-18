namespace :windows do
  namespace :compiler do
    task :run do
      `MinGW\\set_distro_paths.bat & g++ -std=c++11 temp.cpp`
    end

    task :clean do
      `del *.exe`
      `del *.obj`
      `del *.out`
    end
  end

  namespace :antlr do
    task :generate do
      `antlr4ruby -o lib lib/Entity.g`
    end
  end
end

namespace :mac do
  namespace :compiler do
    task :run do
      `gcc temp.cpp -lstdc++`
    end

    task :clean do
      `rm a.out`
    end
  end

  namespace :antlr do
    task :generate do
      `antlr4ruby lib/Entity.g`
    end
  end
end
