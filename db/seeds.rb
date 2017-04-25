# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

  User.destroy_all
  ActiveRecord::Base.connection.execute("TRUNCATE users RESTART IDENTITY")
  User.create(email: 'contacto@aimmanager.com', emage: 'iVBORw0KGgoAAAANSUhEUgAAAGYAAABmCAMAAAAOARRQAAAAclBMVEX///8AAADc3NyGhob09PRhYWFZWVn8/PxdXV2KiopeXl7h4eHm5uZKSkoSEhIVFRXW1tYwMDCoqKh2dna4uLhVVVXs7OzOzs6Tk5NlZWVCQkIhISEnJydPT0+/v7+ioqLIyMhtbW07Ozt+fn6ampp1dXW3H0oCAAACUElEQVRoge3ZbXeCIBgGYFGLWUm+Ta3MXLb//xfnchVvKiB4zjrc30rjqngUBMexsbGxecf4W1dztj6rFOkeaM6+jWglinUjv4kpB4YmFADOkGASMwoACcEEppiAYDxTjMdjjrWvKfV1mKELY06KeJD50Kc48HOQWelk1paZaLNIumRbs0zzdS8rFLa5OQZi13ZVm2LgN37Vo8wQcyPvLs9LXC9T0APVoxGtDCwBHdcAs7syTGuAcRkFhMsw8VsxRwMMpwS++yMfOhnIziIKA4zTnPiFpplxqOvzVMxhsrK8udwj/gFXUPKYZyowMEDd4WvGPUg4T0WBgX+TUsR3nCzsnyaqze71pjzznGGfmoHvUZeeF1yIf1WaaV5PPhW/f3iRZXJ8RAm33HPmMzn56CPsyDE+MdR3wbtZH8OOjhvIOW0mkzEKACl5CuSzMkzBUToHazg6d5/j9ZcE47K3+XuCp5Pdy/CT01/iTL7hKwCUf2ckqH+9YlcaxJl0SHk8Ib/qI2U6SJhhiwz/33Z5tMZep/Tv2QgyvCLDsqf6zaN+jyDDzFqnUhItCjK7o6QCwEWe8VUWcS6yDGwVlG6ElmQuKkpXFrUUkyE1BlSFBNOoLxTGhTDDmbCKJ4wEGXgYa2Yyx1yMmbu2Fva3ndU4cxtrQijrfJpRLjIsX/4U49ITfDVngvHl72TcpGPMAa70KL/NHwaZ8+hAJhWUDC9CIi0d06faDzIGYhnLWOafMAttei20hQfPZhRqQ9LU9iqzKBK1S2wWL7X1bWNjY/MG+QHCQChYRAza8QAAAABJRU5ErkJggg==')
