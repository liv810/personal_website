module Jekyll
  class Page    
    def destination(dest)
      path = site.in_dest_dir(dest, URL.unescape_path(url))
      path = File.join(path, "index") if url.end_with?("/")
      path << output_ext unless path.end_with? output_ext

      # replace index with title
      path.sub! 'index',  data['title'] if data['title']
      path
    end
  end
end

module Jekyll
  class Document
    def destination(base_directory)
      dest = site.in_dest_dir(base_directory)
      path = site.in_dest_dir(dest, URL.unescape_path(url))
      if url.end_with? "/"
        path = File.join(path, "index.html")
      else
        path << output_ext unless path.end_with? output_ext
      end

      # replace index with title
      path.sub! 'index',  data['title'] if data['title']

      path
    end
  end
end  