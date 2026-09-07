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

        args = [
          "pandoc",
          "--from=markdown+mark",
          "--to=html5",
          "--shift-heading-level-by=1"
        ]

        stdout, stderr, status = Open3.capture3(*args, stdin_data: content)
        raise stderr unless status.success?

        stdout
      end
    end
  end
end
