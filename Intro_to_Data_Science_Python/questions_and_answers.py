# Here is a list of faculty teaching this MOOC.
# Can you write a function and apply it using map() to get a list of all faculty
# titles and last names (e.g. ['Dr. Brooks', 'Dr. Collins-Thompson', …]) ?
people = ['Dr. Christopher Brooks', 'Dr. Kevyn Collins-Thompson', 'Dr. VG Vinod Vydiswaran', 'Dr. Daniel Romero']

def split_title_and_name(person):
        title = person.split(' ')[0]
        last_name = person.split(' ')[-1]
        return '{} {}'.format(title, last_name)

print(list(map(split_title_and_name, people)))
