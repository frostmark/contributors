module Web::Views::Contributors
  class Show
    include Web::View

    def project_name(commit)
      matcher = commit.url.match(%r{github.com/hanami/([\w.]+)/})
      matcher && matcher[1]
    end

    def title
      "Commits for #{contributor.github}"
    end
  end
end
