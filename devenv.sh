fun_run_tests() {
  docker-compose run app sh -c "python manage.py test"
}

fun_run_tests_and_lint() {
  docker-compose run app sh -c "python manage.py test && flake8"
}

fun_build_docker() {
  docker-compose build
}

fun_create_core_app() {
  docker-compose run app sh -c "python manage.py startapp core"
}

fun_make_core_migrations() {
  docker-compose run app sh -c "python manage.py makemigrations core"
}

fun_makemigrations() {
  docker-compose run --rm app sh -c "python manage.py makemigrations"
}

