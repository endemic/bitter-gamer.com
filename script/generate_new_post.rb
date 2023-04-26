#!/usr/bin/env ruby

puts "What's the title of your post?"
title = gets.strip

def slugify(string)
  string.downcase.tr(' ', '-').gsub(/(?!-)\W/, '')
end

filename = "_drafts/#{Time.now.to_s[0...10]}-#{slugify(title)}.markdown"

fail 'That post already exists!' if File.exists?(filename)

post_skeleton = <<-EOF
---
layout: post
status: publish
published: true
title: #{title}
author:
  display_name: Nathan Demick
  email: n@demick.org
date: #{Time.now}
categories:
- add_post_categories_here
tags:
- add_post_tags_here
comments: []
---
<BODY />
EOF

File.write(filename, post_skeleton)

puts "Created #{filename}"
