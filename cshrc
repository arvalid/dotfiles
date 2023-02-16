
How to move some files from one git repo to another (not a clone), preserving history

If your history is sane, you can take the commits out as patch and apply them in the new repository:

```
cd repository
git log --pretty=email --patch-with-stat --reverse --full-index --binary -m --first-parent -- path/to/file_or_folder > patch
cd ../another_repository
git am --committer-date-is-author-date < ../repository/patch 
```
Or in one line
```
git log --pretty=email --patch-with-stat --reverse --full-index --binary -m --first-parent -- path/to/file_or_folder | (cd /path/to/new_repository && git am --committer-date-is-author-date)
```
Hint: If commits in the source project’s subdirectory should be extracted to a new repository root directory, git am can be given argument like -p2 to remove extra directories from the patch.
