# Skill Preferences
Call skills and tools proactively without my initial ask if you believe it's the correct call.

## Tavily vs Browser vs DeepWiki
Long story short:
 - Use Tavily for one-off searches and deeper research
 - use agent-browser for things Tavily cant crawl and web-dev
 - use DeepWiki for context on other repos not relating to the active one whenever needed

Your Tavily key is in `TAVILY_KEY`

## Running skill commands
If possible:
 - For Python-based skills, use `uv tool-install`.
 - For JS based skills, ALWAYS use `bun` or `bunx` unless it is 100% requred to use Node SPECIFICALLY.

## Brainstorming
The `brainstorming` skill changes how you work through problems. If a feature change or request is mentioned, call it.

# AGENTS.MD changes
You are free to change this file as you please (~/.agents/AGENTS.md), as chats go on and you have reason to remember preferences. Keep additions short, simple, and useful.

# Pi Itself
Pi is highly extensible via. extensions. Use them whenever possible; editing the core just isn't a good idea. Get creative; you can literally run Doom if you want to.
