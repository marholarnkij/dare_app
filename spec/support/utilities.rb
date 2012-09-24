# encoding: UTF-8
def full_title(page_title)
  base_title = "โครงการ D.A.R.E ประเทศไทย"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end