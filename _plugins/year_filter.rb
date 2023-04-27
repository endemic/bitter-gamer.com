module Jekyll
  module YearFilter
    def year(timestamp)
      timestamp.year
    end
  end
end

Liquid::Template.register_filter(Jekyll::YearFilter)
