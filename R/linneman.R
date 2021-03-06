#' Newest Linneman lessons
#'
#' @return a \code{tibble}
#' @export
#' @references \url{asbcllc.com/reflections/peter_linneman/}
#' @examples
#' get_data_linneman_lessons()
get_data_linneman_lessons <-
  function() {
    lessons <-
      "https://asbcllc.com/reflections/peter_linneman/linnemen_lessons.txt" %>%
      readLines()

    tibble(textLesson = lessons) %>%
      mutate(idLesson = 1:n()) %>%
      select(idLesson, everything())
  }
