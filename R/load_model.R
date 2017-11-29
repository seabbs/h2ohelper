#' Function to Load a Generic H2o Model Object Using a Saved Model Name
#'
#' @param model_name A character string containing the name of an .rds object
#' that contains the name of the model to load
#' @param model_path A character string containing the file path for folder
#' containing the models.
#' @param model_name_path A character string containing the file path for folder
#' containing the model names
#'
#' @return A h2o model object
#'
#' @examples
#'
load_model <- function(model_name, model_path = NULL,
                       model_name_path = NULL) {

  model_name <- readRDS(file.path(model_name_path, model_name))

  model_name <- strsplit(model_name, "/")
  model_name <- model_name[[1]][length(model_name[[1]])]

  model_path <- file.path(model_path, model_name)

  model <- h2o::h2o.loadModel(model_path)

  if(is.null(model)) {
    stop("No model returned, check your file path and h2o installation")
  }
  return(model)
}
