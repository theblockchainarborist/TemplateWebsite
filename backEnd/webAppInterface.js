

    async function sendMessage(message) {
        console.log("INSIDE SEND MESSAGE")
        let messageHeader
        try {
            messageHeader = JSON.parse(message)
        } catch (err) {
            let response = {
                result: 'Error',
                message: 'messageHeader Not Correct JSON Format.'
            }
            return JSON.stringify(response)
        }
        console.log("Above return")
        return messageHeader.queryMessage;
        

        switch (messageHeader.networkService) {
            case 'Social Graph': {
                console.log('Message sent to Social Graph', messageHeader)
                let response = await ST.socialTradingApp.p2pNetworkClient.socialGraphNetworkServiceClient.sendMessage(messageHeader)
                console.log('social graph message response', response)
                return JSON.stringify(response)
            }
            case 'Trading Signals': {
                break
            }
            default: {
                let response = {
                    result: 'Error',
                    message: 'networkService Not Supported.'
                }
                return JSON.stringify(response)
            }
        }
    }

module.exports = {sendMessage};
