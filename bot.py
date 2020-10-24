import discord
from discord.ext import commands

client = commands.Bot( command_prefix = '.' )

#Words
hello_words = ['hello', "hi", "привет", "здрова сашка",/
               "здарова", "чао"]
@client.event

async def on_ready():
    print('BOT connected')

#@client.command(pass_context = True)

#async def hello(ctx, arg):
 #   author = ctx.message.author
 #   await ctx.send(f'{ author.mention } ' + arg )

@client.event

async def on_message(message):
    msg = message.content.lower()

    if msg in hello_words:
        await message.channel.send('Привет, че надо ?')
#connect

token = open('token.txt', 'r').readline()

client.run( token )