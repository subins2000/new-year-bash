# New Year bash

A geeky way to send a new years greetings. Inspired by [ChristBASHTree](https://github.com/sergiolepore/ChristBASHTree)

Read [my blog post](https://subinsb.com/bash-animated-christmas-tree/#make-a-gif) to know how to make a gif/mp4 out of this

Quick way to run :

```
curl https://raw.githubusercontent.com/subins2000/new-year-bash/master/happy-new-year.sh | bash
```

## Requirements

Script requires `toilet` and a bash shell :

```bash
sudo apt install toilet
```

## Config

Some config vars are available at the beginning.

| Variable   | Description
| --------   | -----------
| name       | The name to be displayed at the end
| correction | To correctly align the year text into the centre. Can be +ve or -ve value

The year is displayed with toilet and I wasn't able to find a way to correctly align it to the centre :/
