Jekyll::Hooks.register :posts, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  post.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '{% responsiveimage path: \2 \3 %}')
  post.content.gsub! 'path: /', 'path: ' #you can probably optimise this a bit
end