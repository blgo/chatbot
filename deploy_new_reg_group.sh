az deployment sub create --template-file "./standup-bot/deploymentTemplates/template-with-new-rg.json" \
    --location 'westeurope' \
    --parameters appId="$MicrosoftAppId" \
    appSecret="${APP_SECRET}" \
    botId="${BOT_ID}" \
    botSku=F0 \
    newAppServicePlanName="${BOT_ID}-service-plan" \
    newWebAppName="${BOT_ID}" \
    groupName="Bots" \
    groupLocation="westeurope" \
    newAppServicePlanLocation="westeurope" \
    --name "${BOT_ID}" > deploy.json
