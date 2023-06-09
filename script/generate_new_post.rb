#!/usr/bin/env ruby

puts "What's the title of your post?"
title = gets.strip

def slugify(string)
  string.downcase.tr(' ', '-').gsub(/(?!-)\W/, '')
end

filename = "_posts/#{Time.now.to_s[0...10]}-#{slugify(title)}.markdown"

fail 'That post already exists!' if File.exist?(filename)

post_skeleton = <<-EOF
---
layout: post
title: #{title}
date: #{Time.now}
---
<BODY />
EOF

File.write(filename, post_skeleton)

puts "Created #{filename}"
