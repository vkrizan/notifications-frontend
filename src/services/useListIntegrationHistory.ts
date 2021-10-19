import { Operations } from '../generated/OpenapiIntegrations';

type IntegrationHistoryParams = {
    integrationId: string;
    limit?: number;
    sortBy?: 'created:desc'
}

export const listIntegrationHistoryActionCreator = (params: IntegrationHistoryParams) => {
    return Operations.EndpointServiceGetEndpointHistory.actionCreator({
        id: params.integrationId,
        limit: params.limit,
        sortBy: params.sortBy
    });
};
