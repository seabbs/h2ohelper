#' Function to Save a Generic H2o Model Object Using a Saved Model Name As a Reference
#'
#' @description This function uses a saved model name as a reference in order to find a h2o models
#' file path and then loads the h2o model using the inbuilt h2o functions. This function depends on
#' \code{\link[h2ohelper]{load_model}} in order to load in a saved h20 model object.
#' @param object A h2o model object. If passed as \code{NULL} then the function will attempt to load a previously
#' saved model. Defaults to \code{NULL}.
#' @param model_name A character string indicating the model name, this will be saved in the \code{model_names}
#' subdirectory as an .rds object containing the h2o specified model name.
#' @param model_path A character string indicating the path into which to save the model and the model name.
#' @return A h2o model object
#' @export
#' @seealso load_model
#' @examples
#'
cache_model <- function(object = NULL, model_name, model_path = "../data-raw/models") {

  if (is.null(object)) {
    train <- FALSE
  }

  model_name <- paste0(model_name, ".rds")

  model_path <- file.path(model_path, "model_files")
  model_name_path <- file.path(model_path, "model_names")

  if (train) {
    if (!dir.exists(model_path)) {
      dir.create(model_path)
    }

    if(!dir.exists(model_name_path)) {
      dir.create(model_name_path)
    }
    model_path <- h2o::h2o.saveModel(object = object,
                                     path = model_path,
                                     force=TRUE)

    saveRDS(model_path, file.path(model_name_path, model_name))
  }else {
    object <- load_model(model_name, model_path, model_name_path)
  }

  return(object)
}

