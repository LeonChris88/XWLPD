.class public Lcom/android/email/PoliciesMultiplexer;
.super Ljava/lang/Object;
.source "PoliciesMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/email/PoliciesMultiplexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAllPolicies(Ljava/lang/Long;)[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v1, "getAllPolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-static {v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name=?"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "RequireSignedSMIMEAlgorithm"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name=?"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "RequireEncryptionSMIMEAlgorithm"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v4, "Boolean"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "name=?"

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    const-string v1, "account_id=?"

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "account_id=?"

    move-object v4, v0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "PasswordMode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/email/PoliciesMultiplexer;->removePasswordPolicies(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_9
    new-array v0, v10, [Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    move-object v3, v0

    goto/16 :goto_0
.end method

.method private getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "Integer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private removePasswordPolicies(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "PasswordMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public computeAggregatePolicy(Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "update"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/android/email/PoliciesMultiplexer;->getAllPolicies(Ljava/lang/Long;)[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-object v11

    :cond_1
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "grouping policies by name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v7

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v8, v0, v4

    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "grouped policies by name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "finding the strongest policies"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "found the strongest policies"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "applying policies to the device"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-direct {p0, v13, v14}, Lcom/android/email/PoliciesMultiplexer;->getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
