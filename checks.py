import os
from datetime import datetime

# Posts
print("POST CHECKS")

# Episode Number in Title
problem = False
for post_name in os.listdir("_posts/"):
    num = int(post_name[:-3].split("-")[-1])
    with open("_posts/" + post_name) as post:
        for line in post:
            if "title:" in line and num != 110:
                title_num = int(line.split()[2][:-1])
                if title_num != num:
                    print(
                        f"  ❌ {post_name}: Expected episode {num}, found {title_num} in title"
                    )
                    problem = True
print(("❌" if problem else "✅") + " - Episode Number in Title")

# Episode Number in Link to Website (Text)
problem = False
for post_name in os.listdir("_posts/"):
    num = int(post_name[:-3].split("-")[-1])
    with open("_posts/" + post_name) as post:
        idx = 3 if num < 115 else 4
        for line in post:
            if "Link to Episode" in line:
                link_num = int(line.split()[idx])
                if link_num != num:
                    print(
                        f"  ❌ {post_name}: Expected episode {num}, found {link_num} in link text"
                    )
                    problem = True
print(("❌" if problem else "✅") + " - Episode Number in Link to Website (Text)")

# Date in Link to Website (Link)
problem = False
for post_name in os.listdir("_posts/"):
    date = post_name[:10]
    num = int(post_name[:-3].split("-")[-1])
    with open("_posts/" + post_name) as post:
        idx = 3 if num < 115 else 4
        for line in post:
            if "Link to Episode" in line:
                link_date = "-".join(line.split("/")[3:6])
                if link_date != date:
                    print(
                        f"  ❌ {post_name}: Expected date {date}, found {link_date} in link"
                    )
                    problem = True
print(("❌" if problem else "✅") + " - Date in Link to Website (Link)")

# Date in Record Date
problem = False
for post_name in os.listdir("_posts/"):
    date = post_name[:10]
    num = int(post_name[:-3].split("-")[-1])
    with open("_posts/" + post_name) as post:
        idx = 3 if num < 115 else 4
        for line in post:
            if "Date Recorded:" in line:
                record_date = line.strip().split()[-2]
                if record_date != date and num not in {28, 29}:
                    print(
                        f"  ❌ {post_name}: Expected date {date}, found {record_date} in record date"
                    )
                    problem = True
print(("❌" if problem else "✅") + " - Date in Record Date")

# Discussion Link Issue Number
problem = False
for post_name in os.listdir("_posts/"):
    num = int(post_name[:-3].split("-")[-1])
    with open("_posts/" + post_name) as post:
        for line in post:
            if "Discuss this episode" in line:
                # Ep 115 started with Issue 5 (so subtract 110)
                expected_issue = num - 110 + (num > 116) + (num > 151)
                actual_issue = int(line[:-2].split("/")[-1])
                if expected_issue != actual_issue:
                    print(
                        f"  ❌ {post_name}: Expected issue {expected_issue}, found {actual_issue} in discussion link"
                    )
                    problem = True
print(("❌" if problem else "✅") + " - Discussion Link Issue Number")

# Episodes
print("EPISODES CHECKS")

# Number, Title & Link in Episodes.md
problem_title = False
problem_date = False
problem_link_date = False
problem_link_num = False
for post_name in os.listdir("_posts/"):
    num = int(post_name[:-3].split("-")[-1])
    date = post_name[:10]
    with open("_posts/" + post_name) as post:
        for line in post:
            if "title:" in line:
                title = " ".join(line.split('"')[-2].split()[2:])
    with open("pages/episodes.md") as file:
        for n, line in enumerate(file):
            if n > 17 and "[" in line:
                data = line.split("|")
                if len(data) > 3:
                    other_num = int(data[1].strip())
                    other_date = data[-2].strip()
                    other_title = data[2].split("]")[0].strip()[1:].replace("`", "")
                    link_num = int(data[2].split("]")[1].split("/")[6].strip()[8:-6])
                    link_date = "-".join(data[2].split("]")[1].split("/")[3:6])

                    if num == other_num:
                        if date != other_date:
                            print(
                                f"  ❌ Episode {num}: Expected date {date}, found {other_date} in episodes.md"
                            )
                            problem_date = True
                        if title != other_title and "Ben Deane" not in title:
                            print(f"  ❌ Episode {num}: Title mismatch")
                            print(f"      Post:        '{title}'")
                            print(f"      Episodes.md: '{other_title}'")
                            problem_title = True
                        if date != link_date:
                            print(
                                f"  ❌ Episode {num}: Expected link date {date}, found {link_date} in episodes.md"
                            )
                            problem_link_date = True
                        if num != link_num:
                            print(
                                f"  ❌ Episode {num}: Expected link number {num}, found {link_num} in episodes.md"
                            )
                            problem_link_num = True

print(("❌" if problem_date else "✅") + " - Episode Date")
print(("❌" if problem_title else "✅") + " - Episode Title")
print(("❌" if problem_link_date else "✅") + " - Episode Date in Link")
print(("❌" if problem_link_num else "✅") + " - Episode Number in Link")
