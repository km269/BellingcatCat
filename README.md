# BellingcatCat

## Team Members

- James Fleming
    - Github handle is [equill](https://github.com/equill/)
    - Email address is james@electronic-quill.net


## Tool Description

`This sections discusses the purpose and motivation for the tool, and how it addresses a tool need you've identified.`

Summary: what can [Restagraph](https://github.com/equill/restagraph) bring to OSINT?

There are already a couple of OSINT tools with very well-polished GUIs. However, they have a few shortcomings that the Restagraph platform can address.


## Installation

Outside of the hackathon, I'm actually working to make this platform available as a hosted solution. However, if you're comfortable with Docker and you want your own local installation to mess with, please go ahead and let me know how you find it.

1. Ensure you have Docker installed.
    - Make sure `docker swarm` is also active. This is necessary for `docker stack`.
    - Make sure you know what address the Docker Bridge has on your machine. I personally use 192.0.2.1/24, because it's a safe choice, but you do you.
2. Download `docker-compose.yml` from this repo.
3. Edit `docker-compose.yml` to suit your environment.
    - Change the database password.
        - In _both_ places.
    - It doesn't care what ports or addresses it's listening on, so change those to suit yourself.
    - Volumes are volumes. It's easier to back them up if they're on-disk directories, though.
4. Run it: `docker stack deploy -c docker-compose.yml bellingcatcat`
    - It doesn't actually care what you call it, so a more sensible name is probably a good idea.


As pre-configured in `docker-compose.xml`, it listens on the following ports:

  - Web GUI: 8086
  - HTTP API: 5050
  - Neo4j (HTTP): 5051
  - Neo4j (Bolt): 5052

Note: you're probably going to want to stick a web proxy in front of it, e.g. `nginx`. This isn't included in this repo, because I haven't found a practical way of providing a general-purpose config file of that kind.


## Usage

```
This sections includes detailed instructions for using the tool. If the tool has a command-line interface, include common commands and arguments, and some examples of commands and a description of the expected output. If the tool has a graphical user interface or a browser interface, include screenshots and describe a common workflow.
```

## Additional Information

```
This section includes any additional information that you want to mention about the tool, including:
- Potential next steps for the tool (i.e. what you would implement if you had more time)
- Any limitations of the current implementation of the tool
- Motivation for design/architecture decisions
```
