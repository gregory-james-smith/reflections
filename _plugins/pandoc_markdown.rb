module Jekyll
  module Converters
    class Markdown < Jekyll::Converter
      safe true
      priority :high

      def matches(ext)
        ext =~ /\.md\z/i
      end

      def output_ext(ext)
        ".html"
      end

      def convert(content)
        require "open3"

        # Add Lua filters from the _pandoc directory
        pandoc_dir = File.expand_path("../_pandoc", __dir__)
        filters = Dir.glob(File.join(pandoc_dir, "*.lua")).sort
        filter_args = filters.flat_map { |f| ["--lua-filter", f] }

        args = [
          "pandoc",
          "--from=markdown+mark+tex_math_dollars",
          "--to=html5",
          "--shift-heading-level-by=1"
        ] + filter_args

        stdout, stderr, status = Open3.capture3(*args, stdin_data: content)
        raise stderr unless status.success?

        stdout
      end
    end
  end
end
