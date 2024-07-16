args <- commandArgs(trailingOnly = TRUE);

arg.prefix <- '\\-\\-';
arg.separator <- '(\\=| )?';

get.arg <- function(args, arg.name) {
    arg.regex <- paste0(arg.prefix, arg.name, arg.separator);
    return(isolate.arg(args[grepl(arg.regex, args)], arg.name));
    }

isolate.arg <- function(full.arg, arg.name) {
    gsub(paste0(arg.prefix, arg.name, '(\\=| )?|\\"'), '', full.arg);
    }

packages <- unlist(strsplit(get.arg(args, 'packages'), ' '));
token <- get.arg(args, 'token');

for (package in packages) {
    devtools::install_github(package, auth_token = token);
    }
