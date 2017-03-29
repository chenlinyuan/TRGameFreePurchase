
%hook TrgameIAP

- (_Bool)buyItem:(id)arg1 {
    if ([self respondsToSelector:@selector(IAPdelegate)]) {
        id delegate = [self performSelector:@selector(IAPdelegate)];
        if ([delegate respondsToSelector:@selector(buyItemResult:result:)]) {
            [delegate performSelector:@selector(buyItemResult:result:) withObject:arg1 withObject:@(1)];
        }
    }
    return 0;
}

%end

