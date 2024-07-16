args <- commandArgs(trailingOnly = TRUE);

arg.prefix <- '\\-\\-';
arg.separator <- '(\\=| )?';

get.arg <- function(args, arg.name) {
    arg.regex <- paste0(arg.prefix, arg.name, arg.separator);
    arg <- args[grepl(arg.regex, args)];
    if (length(arg) < 1) {
        return(NULL);
        }
    return(isolate.arg(arg, arg.name));
    }

isolate.arg <- function(full.arg, arg.name) {
    gsub(paste0(arg.prefix, arg.name, '(\\=| )?|\\"'), '', full.arg);
    }

packages <- unlist(strsplit(get.arg(args, 'packages'), ' '));
if (!is.null(packages)) {
    token <- get.arg(args, 'token');

    install <- function(package, token) {
        if (!is.null(token)) {
            devtools::install_github(package, auth_token = token);
        } else {
            devtools::install_github(package);
            }
    }

    for (package in packages) {
        install(package, token);
        }
    }
