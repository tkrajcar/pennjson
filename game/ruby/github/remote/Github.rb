require 'github_api'
module Github
  PennJSON::register_object(self)

  R = PennJSON::Remote

  def self.pj_pennjson_issue_count
    repo = Github.repos.get 'tkrajcar', 'pennjson'
    repo.open_issues_count.to_s
  end

  def self.pj_any_issue_count(repo_name)
    if R["enactor"] == "#1"
      repo = Github.repos.get 'tkrajcar', repo_name
      "Hello O Godly One, your issue count is #{repo.open_issues_count} and your lastsite was #{R.xget(R["enactor"],"lastsite")}."
    else
      "Hello #{R.penn_name(R["enactor"])}, you've been connected since #{R.xget(R["enactor"],"last")}."
    end
  end
end
