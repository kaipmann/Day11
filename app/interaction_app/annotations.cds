using CatalogService as service from '../../srv/interaction-srv';
annotate service.Interactions_Header with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Partner}',
                Value : partner,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Country1}',
                Value : country_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Partner}',
            Value : partner,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Country1}',
            Value : country_code,
        },
    ],
    UI.HeaderInfo : {
        TypeName : 'Interaction item',
        TypeNamePlural : 'Interaction items',
        Title : {
            $Type : 'UI.DataField',
            Value : country.name,
        },
    },
);

annotate service.Interactions_Header with {
    country @Common.Text : country.descr
};

