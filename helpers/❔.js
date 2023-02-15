module.exports = {
    name: '❔',
    secret: false,
    description: "explains the emojis",
    execute(params, bot)
    {
        let help = `Utilities:\n⏮: Go back one song\n⬇: switch to downvote mode (themojis will now downvote)\n⬆: switch to upvote mode (themojis will now upvote)\n⏭: Go forwards one song\n↕: switch to order mode (themojis will now order their playlist)\n🔀: switch to order mode (themojis will now shuffle their playlist)\n❔: opens this menu`
        bot.updateUtilityMessage(help)
    }
}  