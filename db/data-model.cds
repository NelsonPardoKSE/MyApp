context MyApp.db {
    @odata.draft.enabled
    entity Sales {
        key ID          : Integer;
            region      : String(100);
            country     : String(100);
            org         : String(4);
            amount      : Integer;
            comments    : String(100);
            criticality : Integer;
    };

    @odata.draft.enabled
    entity User {
        key ID   : Integer;
            name : String(100);
    };


}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_SALES {
    key REGION : String(100);
        AMOUNT : Integer;
}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_SESSION_INFO {
    key ITEM  : String(5000);
        VALUE : String(5000);
}
