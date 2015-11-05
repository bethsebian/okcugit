
class Finder

  def initialize(repo_name)
    @repo_name = repo_name
  end

  def navigate_to_local_dir
    Dir.chdir("/Users/elizabethsebian/turing/1module/class_files/okcugit/love_handler")
  end

  def pwd
    Dir.chdir("/Users/elizabethsebian/turing/1module/class_files/okcugit/love_handler")
    Dir.pwd
  end

  def git_clone
    `git clone #{@repo_name}`
  end

end

repo_name = "https://github.com/turingschool/challenges.git"
finder = Finder.new(repo_name) # need to add OkCuGit:: later
finder.navigate_to_local_dir
finder.git_clone
# contacts = finder.all_contributors
# puts contacts.join("\n")