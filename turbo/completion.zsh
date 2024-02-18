#compdef turbo

autoload -U is-at-least

_turbo() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--cache-dir=[Override the filesystem cache directory]:CACHE_DIR: ' \
'--cache-workers=[Set the number of concurrent cache operations (default 10)]:CACHE_WORKERS: ' \
'--concurrency=[Limit the concurrency of task execution. Use 1 for serial (i.e. one-at-a-time) execution]:CONCURRENCY: ' \
'--dry-run=[]' \
'*-F+[Use the given selector to specify package(s) to act as entry points. The syntax mirrors pnpm'\''s syntax, and additional documentation and examples can be found in turbo'\''s documentation https\://turbo.build/repo/docs/reference/command-line-reference/run#--filter]:FILTER: ' \
'*--filter=[Use the given selector to specify package(s) to act as entry points. The syntax mirrors pnpm'\''s syntax, and additional documentation and examples can be found in turbo'\''s documentation https\://turbo.build/repo/docs/reference/command-line-reference/run#--filter]:FILTER: ' \
'--force=[Ignore the existing cache (to force execution)]' \
'--framework-inference=[Specify whether or not to do framework inference for tasks]' \
'*--global-deps=[Specify glob of global filesystem dependencies to be hashed. Useful for .env and files]:GLOBAL_DEPS: ' \
'--graph=[Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html). Outputs dot graph to stdout when if no filename is provided]' \
'--env-mode=[Environment variable mode. Use "loose" to pass the entire existing environment. Use "strict" to use an allowlist specified in turbo.json. Use "infer" to defer to existence of "passThroughEnv" or "globalPassThroughEnv" in turbo.json. (default infer)]' \
'*--ignore=[Files to ignore when calculating changed files (i.e. --since). Supports globs]:IGNORE: ' \
'--output-logs=[Set type of process output logging. Use "full" to show all output. Use "hash-only" to show only turbo-computed task hashes. Use "new-only" to show only new output with only hashes for cached tasks. Use "none" to hide process output. (default full)]:OUTPUT_LOGS:(full none hash-only new-only errors-only)' \
'--log-order=[Set type of task output order. Use "stream" to show output as soon as it is available. Use "grouped" to show output when a command has finished execution. Use "auto" to let turbo decide based on its own heuristics. (default auto)]:LOG_ORDER:(auto stream grouped)' \
'--pkg-inference-root=[]:PKG_INFERENCE_ROOT: ' \
'--profile=[File to write turbo'\''s performance profile output into. You can load the file up in chrome\://tracing to see which parts of your build were slow]:PROFILE: ' \
'--remote-only=[Ignore the local filesystem cache for all tasks. Only allow reading and caching artifacts using the remote cache]' \
'*--scope=[Specify package(s) to act as entry points for task execution. Supports globs]:SCOPE: ' \
'--since=[Limit/Set scope to changed packages since a mergebase. This uses the git diff \${target_branch}... mechanism to identify which packages have changed]:SINCE: ' \
'--summarize=[Generate a summary of the turbo run]' \
'--log-prefix=[Use "none" to remove prefixes from task logs. Use "task" to get task id prefixing. Use "auto" to let turbo decide how to prefix the logs based on the execution environment. In most cases this will be the same as "task". Note that tasks running in parallel interleave their logs, so removing prefixes can make it difficult to associate logs with tasks. Use --log-order=grouped to prevent interleaving. (default auto)]:LOG_PREFIX:(auto none task)' \
'--experimental-space-id=[]:EXPERIMENTAL_SPACE_ID: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'--continue[Continue execution even if a task exits with an error or non-zero exit code. The default behavior is to bail]' \
'--single-package[Run turbo in single-package mode]' \
'--include-dependencies[Include the dependencies of tasks in execution]' \
'--no-cache[Avoid saving task results to the cache. Useful for development/watch tasks]' \
'--no-daemon[Run without using turbo'\''s daemon process]' \
'--no-deps[Exclude dependent task consumers from execution]' \
'--only[Only executes the tasks specified, does not execute parent tasks]' \
'--parallel[Execute all tasks in parallel]' \
'--experimental-rust-codepath[Opt-in to the rust codepath for running turbo rather than using the go shim]' \
'-h[Print help]' \
'--help[Print help]' \
'::tasks:' \
'::pass_through_args:' \
":: :_turbo_commands" \
"*::: :->turborepo-lib" \
&& ret=0
    case $state in
    (turborepo-lib)
        words=($line[3] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:turbo-command-$line[3]:"
        case $line[3] in
            (bin)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(completion)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(daemon)
_arguments "${_arguments_options[@]}" \
'--idle-time=[Set the idle timeout for turbod]:IDLE_TIME: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_turbo__daemon_commands" \
"*::: :->daemon" \
&& ret=0

    case $state in
    (daemon)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:turbo-daemon-command-$line[1]:"
        case $line[1] in
            (restart)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(start)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--json[Pass --json to report status in JSON format]' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(stop)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
        esac
    ;;
esac
;;
(generate)
_arguments "${_arguments_options[@]}" \
'--tag=[]:TAG: ' \
'-c+[Generator configuration file]:CONFIG: ' \
'--config=[Generator configuration file]:CONFIG: ' \
'-r+[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'--root=[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'*-a+[Answers passed directly to generator]:ARGS: ' \
'*--args=[Answers passed directly to generator]:ARGS: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
'::generator_name -- The name of the generator to run:' \
":: :_turbo__generate_commands" \
"*::: :->generate" \
&& ret=0

    case $state in
    (generate)
        words=($line[2] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:turbo-generate-command-$line[2]:"
        case $line[2] in
            (workspace)
_arguments "${_arguments_options[@]}" \
'-n+[Name for the new workspace]:NAME: ' \
'--name=[Name for the new workspace]:NAME: ' \
'(-b --empty)-c+[Generate a workspace using an existing workspace as a template. Can be the name of a local workspace within your monorepo, or a fully qualified GitHub URL with any branch and/or subdirectory]' \
'(-b --empty)--copy=[Generate a workspace using an existing workspace as a template. Can be the name of a local workspace within your monorepo, or a fully qualified GitHub URL with any branch and/or subdirectory]' \
'-d+[Where the new workspace should be created]:DESTINATION: ' \
'--destination=[Where the new workspace should be created]:DESTINATION: ' \
'-t+[The type of workspace to create]:TYPE: ' \
'--type=[The type of workspace to create]:TYPE: ' \
'-r+[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'--root=[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'-p+[In a rare case, your GitHub URL might contain a branch name with a slash (e.g. bug/fix-1) and the path to the example (e.g. foo/bar). In this case, you must specify the path to the example separately\: --example-path foo/bar]:EXAMPLE_PATH: ' \
'--example-path=[In a rare case, your GitHub URL might contain a branch name with a slash (e.g. bug/fix-1) and the path to the example (e.g. foo/bar). In this case, you must specify the path to the example separately\: --example-path foo/bar]:EXAMPLE_PATH: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'(-c --copy)-b[Generate an empty workspace]' \
'(-c --copy)--empty[Generate an empty workspace]' \
'--show-all-dependencies[Do not filter available dependencies by the workspace type]' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(run)
_arguments "${_arguments_options[@]}" \
'-c+[Generator configuration file]:CONFIG: ' \
'--config=[Generator configuration file]:CONFIG: ' \
'-r+[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'--root=[The root of your repository (default\: directory with root turbo.json)]:ROOT: ' \
'*-a+[Answers passed directly to generator]:ARGS: ' \
'*--args=[Answers passed directly to generator]:ARGS: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
'::generator_name -- The name of the generator to run:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(info)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
'::workspace:' \
&& ret=0
;;
(link)
_arguments "${_arguments_options[@]}" \
'--target=[Specify what should be linked (default "remote cache")]:TARGET:(remote-cache spaces)' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--no-gitignore[Do not create or modify .gitignore (default false)]' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" \
'--sso-team=[]:SSO_TEAM: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(prune)
_arguments "${_arguments_options[@]}" \
'*--scope=[]:SCOPE: ' \
'--out-dir=[]:OUTPUT_DIR: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--docker[]' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
'*::scope_arg -- Workspaces that should be included in the subset:' \
&& ret=0
;;
(run)
_arguments "${_arguments_options[@]}" \
'--cache-dir=[Override the filesystem cache directory]:CACHE_DIR: ' \
'--cache-workers=[Set the number of concurrent cache operations (default 10)]:CACHE_WORKERS: ' \
'--concurrency=[Limit the concurrency of task execution. Use 1 for serial (i.e. one-at-a-time) execution]:CONCURRENCY: ' \
'--dry-run=[]' \
'*-F+[Use the given selector to specify package(s) to act as entry points. The syntax mirrors pnpm'\''s syntax, and additional documentation and examples can be found in turbo'\''s documentation https\://turbo.build/repo/docs/reference/command-line-reference/run#--filter]:FILTER: ' \
'*--filter=[Use the given selector to specify package(s) to act as entry points. The syntax mirrors pnpm'\''s syntax, and additional documentation and examples can be found in turbo'\''s documentation https\://turbo.build/repo/docs/reference/command-line-reference/run#--filter]:FILTER: ' \
'--force=[Ignore the existing cache (to force execution)]' \
'--framework-inference=[Specify whether or not to do framework inference for tasks]' \
'*--global-deps=[Specify glob of global filesystem dependencies to be hashed. Useful for .env and files]:GLOBAL_DEPS: ' \
'--graph=[Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html). Outputs dot graph to stdout when if no filename is provided]' \
'--env-mode=[Environment variable mode. Use "loose" to pass the entire existing environment. Use "strict" to use an allowlist specified in turbo.json. Use "infer" to defer to existence of "passThroughEnv" or "globalPassThroughEnv" in turbo.json. (default infer)]' \
'*--ignore=[Files to ignore when calculating changed files (i.e. --since). Supports globs]:IGNORE: ' \
'--output-logs=[Set type of process output logging. Use "full" to show all output. Use "hash-only" to show only turbo-computed task hashes. Use "new-only" to show only new output with only hashes for cached tasks. Use "none" to hide process output. (default full)]:OUTPUT_LOGS:(full none hash-only new-only errors-only)' \
'--log-order=[Set type of task output order. Use "stream" to show output as soon as it is available. Use "grouped" to show output when a command has finished execution. Use "auto" to let turbo decide based on its own heuristics. (default auto)]:LOG_ORDER:(auto stream grouped)' \
'--pkg-inference-root=[]:PKG_INFERENCE_ROOT: ' \
'--profile=[File to write turbo'\''s performance profile output into. You can load the file up in chrome\://tracing to see which parts of your build were slow]:PROFILE: ' \
'--remote-only=[Ignore the local filesystem cache for all tasks. Only allow reading and caching artifacts using the remote cache]' \
'*--scope=[Specify package(s) to act as entry points for task execution. Supports globs]:SCOPE: ' \
'--since=[Limit/Set scope to changed packages since a mergebase. This uses the git diff \${target_branch}... mechanism to identify which packages have changed]:SINCE: ' \
'--summarize=[Generate a summary of the turbo run]' \
'--log-prefix=[Use "none" to remove prefixes from task logs. Use "task" to get task id prefixing. Use "auto" to let turbo decide how to prefix the logs based on the execution environment. In most cases this will be the same as "task". Note that tasks running in parallel interleave their logs, so removing prefixes can make it difficult to associate logs with tasks. Use --log-order=grouped to prevent interleaving. (default auto)]:LOG_PREFIX:(auto none task)' \
'--experimental-space-id=[]:EXPERIMENTAL_SPACE_ID: ' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--continue[Continue execution even if a task exits with an error or non-zero exit code. The default behavior is to bail]' \
'--single-package[Run turbo in single-package mode]' \
'--include-dependencies[Include the dependencies of tasks in execution]' \
'--no-cache[Avoid saving task results to the cache. Useful for development/watch tasks]' \
'--no-daemon[Run without using turbo'\''s daemon process]' \
'--no-deps[Exclude dependent task consumers from execution]' \
'--only[Only executes the tasks specified, does not execute parent tasks]' \
'--parallel[Execute all tasks in parallel]' \
'--experimental-rust-codepath[Opt-in to the rust codepath for running turbo rather than using the go shim]' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::tasks:' \
&& ret=0
;;
(unlink)
_arguments "${_arguments_options[@]}" \
'--target=[Specify what should be unlinked (default "remote cache")]:TARGET:(remote-cache spaces)' \
'--api=[Override the endpoint for API calls]:API: ' \
'--cpuprofile=[Specify a file to save a cpu profile]:CPU_PROFILE: ' \
'--cwd=[The directory in which to run turbo]:CWD: ' \
'--heap=[Specify a file to save a pprof heap profile]:HEAP: ' \
'--login=[Override the login endpoint]:LOGIN: ' \
'--remote-cache-timeout=[Set a timeout for all HTTP requests]:TIMEOUT: ' \
'--team=[Set the team slug for API calls]:TEAM: ' \
'--token=[Set the auth token for API calls]:TOKEN: ' \
'--trace=[Specify a file to save a pprof trace]:TRACE: ' \
'(-v)--verbosity=[Verbosity level]:COUNT: ' \
'--version[]' \
'--skip-infer[Skip any attempts to infer which version of Turbo the project is configured to use]' \
'--no-update-notifier[Disable the turbo update notification]' \
'--color[Force color usage in the terminal]' \
'--no-color[Suppress color usage in the terminal]' \
'--preflight[When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization]' \
'(--verbosity)*-v[]' \
'--check-for-update[Force a check for a new version of turbo]' \
'--__test-run[]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_turbo_commands] )) ||
_turbo_commands() {
    local commands; commands=(
'bin:Get the path to the Turbo binary' \
'completion:Generate the autocompletion script for the specified shell' \
'daemon:Runs the Turborepo background daemon' \
'generate:Generate a new app / package' \
'info:' \
'link:Link your local directory to a Vercel organization and enable remote caching' \
'login:Login to your Vercel account' \
'logout:Logout to your Vercel account' \
'prune:Prepare a subset of your monorepo' \
'run:Run tasks across projects in your monorepo' \
'unlink:Unlink the current directory from your Vercel organization and disable Remote Caching' \
    )
    _describe -t commands 'turbo commands' commands "$@"
}
(( $+functions[_turbo__bin_commands] )) ||
_turbo__bin_commands() {
    local commands; commands=()
    _describe -t commands 'turbo bin commands' commands "$@"
}
(( $+functions[_turbo__daemon__clean_commands] )) ||
_turbo__daemon__clean_commands() {
    local commands; commands=()
    _describe -t commands 'turbo daemon clean commands' commands "$@"
}
(( $+functions[_turbo__completion_commands] )) ||
_turbo__completion_commands() {
    local commands; commands=()
    _describe -t commands 'turbo completion commands' commands "$@"
}
(( $+functions[_turbo__daemon_commands] )) ||
_turbo__daemon_commands() {
    local commands; commands=(
'restart:Restarts the turbo daemon' \
'start:Ensures that the turbo daemon is running' \
'status:Reports the status of the turbo daemon' \
'stop:Stops the turbo daemon' \
'clean:Stops the turbo daemon if it is already running, and removes any stale daemon state' \
    )
    _describe -t commands 'turbo daemon commands' commands "$@"
}
(( $+functions[_turbo__generate_commands] )) ||
_turbo__generate_commands() {
    local commands; commands=(
'workspace:Add a new package or app to your project' \
'run:' \
    )
    _describe -t commands 'turbo generate commands' commands "$@"
}
(( $+functions[_turbo__info_commands] )) ||
_turbo__info_commands() {
    local commands; commands=()
    _describe -t commands 'turbo info commands' commands "$@"
}
(( $+functions[_turbo__link_commands] )) ||
_turbo__link_commands() {
    local commands; commands=()
    _describe -t commands 'turbo link commands' commands "$@"
}
(( $+functions[_turbo__login_commands] )) ||
_turbo__login_commands() {
    local commands; commands=()
    _describe -t commands 'turbo login commands' commands "$@"
}
(( $+functions[_turbo__logout_commands] )) ||
_turbo__logout_commands() {
    local commands; commands=()
    _describe -t commands 'turbo logout commands' commands "$@"
}
(( $+functions[_turbo__prune_commands] )) ||
_turbo__prune_commands() {
    local commands; commands=()
    _describe -t commands 'turbo prune commands' commands "$@"
}
(( $+functions[_turbo__daemon__restart_commands] )) ||
_turbo__daemon__restart_commands() {
    local commands; commands=()
    _describe -t commands 'turbo daemon restart commands' commands "$@"
}
(( $+functions[_turbo__generate__run_commands] )) ||
_turbo__generate__run_commands() {
    local commands; commands=()
    _describe -t commands 'turbo generate run commands' commands "$@"
}
(( $+functions[_turbo__run_commands] )) ||
_turbo__run_commands() {
    local commands; commands=()
    _describe -t commands 'turbo run commands' commands "$@"
}
(( $+functions[_turbo__daemon__start_commands] )) ||
_turbo__daemon__start_commands() {
    local commands; commands=()
    _describe -t commands 'turbo daemon start commands' commands "$@"
}
(( $+functions[_turbo__daemon__status_commands] )) ||
_turbo__daemon__status_commands() {
    local commands; commands=()
    _describe -t commands 'turbo daemon status commands' commands "$@"
}
(( $+functions[_turbo__daemon__stop_commands] )) ||
_turbo__daemon__stop_commands() {
    local commands; commands=()
    _describe -t commands 'turbo daemon stop commands' commands "$@"
}
(( $+functions[_turbo__unlink_commands] )) ||
_turbo__unlink_commands() {
    local commands; commands=()
    _describe -t commands 'turbo unlink commands' commands "$@"
}
(( $+functions[_turbo__generate__workspace_commands] )) ||
_turbo__generate__workspace_commands() {
    local commands; commands=()
    _describe -t commands 'turbo generate workspace commands' commands "$@"
}

if [ "$funcstack[1]" = "_turbo" ]; then
    _turbo "$@"
else
    compdef _turbo turbo
fi