.class final Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$000(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v0, v10}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$002(Lcom/android/common/contacts/BaseEmailAddressAdapter;Z)Z

    :cond_0
    new-instance v9, Landroid/widget/Filter$FilterResults;

    invoke-direct {v9}, Landroid/widget/Filter$FilterResults;-><init>()V

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    iget-object v4, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v4}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$100(Lcom/android/common/contacts/BaseEmailAddressAdapter;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "name_for_primary_account"

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "type_for_primary_account"

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v9, Landroid/widget/Filter$FilterResults;->count:I

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    aput-object v7, v0, v10

    iput-object v0, v9, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v9
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    :cond_0
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-virtual {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    return-void
.end method
