.class public abstract Lcom/android/email/adapter/ProtocolAdapter;
.super Ljava/lang/Object;
.source "ProtocolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;
    }
.end annotation


# static fields
.field private static mAccountHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mContext:Landroid/content/Context;

.field private static mDummy:Lcom/android/email/adapter/ProtocolAdapter;

.field protected static mEas:Lcom/android/email/adapter/ProtocolAdapter;

.field private static mHideLegacy:Lcom/android/email/adapter/ProtocolAdapter;

.field protected static mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

.field protected static mLegacyController:Lcom/android/email/MessagingController;

.field protected static mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field protected static mResultCallback:Lcom/android/email/Controller$Result;

.field protected static mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

.field protected static mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

.field protected static mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mAccountHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAccountInfoTable()V
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    sget-object v6, Lcom/android/email/adapter/ProtocolAdapter;->mAccountHash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    if-nez v1, :cond_1

    const-string v6, "ProtocolAdapter"

    const-string v7, "Account list is empty - maybe no accounts configured yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    new-instance v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;

    invoke-direct {v4, v10}, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;-><init>(Lcom/android/email/adapter/ProtocolAdapter$1;)V

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolType(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v6

    iput v6, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mType:I

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v6

    iput v6, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mTransport:I

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v6

    iput v6, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mProvider:I

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getEasProtocolVersion(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mVersion:I

    const-string v6, "ProtocolAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildAccountInfoTable() accId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTransport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mTransport:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/email/adapter/ProtocolAdapter;->mAccountHash:Ljava/util/HashMap;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static doCleanup()V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "doCleanup() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanupInternal()V

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanupInternal()V

    :cond_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanupInternal()V

    :cond_2
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanupInternal()V

    :cond_3
    return-void
.end method

.method public static getAccountTransport(J)I
    .locals 2

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v1

    return v1
.end method

.method public static getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I
    .locals 7

    const/4 v3, 0x6

    const/16 v2, 0xff

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v5, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    const-string v5, "pop3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v5, "imap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    const-string v5, "snc"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    const-string v5, "eas"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static getProtocolAdapter(I)Lcom/android/email/adapter/ProtocolAdapter;
    .locals 3

    invoke-static {p0}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "ProtocolAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL: Can\'t find adapter for account mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/adapter/DummyAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/DummyAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/adapter/EasAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/EasAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;
    .locals 3

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "ProtocolAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL: Can\'t find adapter for account ID/mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v2

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/adapter/DummyAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/DummyAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mDummy:Lcom/android/email/adapter/ProtocolAdapter;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/adapter/EasAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/EasAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->isAccountAccessible(J)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mHideLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/email/adapter/DummyAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/email/adapter/DummyAdapter;-><init>(Z)V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mHideLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_2
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mHideLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/adapter/EasAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/EasAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mEas:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/adapter/SevenAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/SevenAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocol()V

    :cond_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSevenAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getProtocolAdapterType(J)I
    .locals 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mAccountHash:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mType:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/email/adapter/ProtocolAdapter;->buildAccountInfoTable()V

    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mAccountHash:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;

    if-nez v0, :cond_2

    const-string v2, "ProtocolAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL: Account not available, cannot find accout for accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;->mType:I

    goto :goto_0
.end method

.method private static getProtocolType(Lcom/android/emailcommon/provider/EmailContent$Account;)I
    .locals 3

    invoke-static {p0}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    return v0
.end method

.method public static getProviderType(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v0

    return v0
.end method

.method public static getTransportString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string v0, "INVALID"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getTransportStringFromType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTrasportType(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v0

    return v0
.end method

.method public static initProtocolAdapter(Landroid/content/Context;Lcom/android/email/Controller$Result;Lcom/android/email/Controller$ServiceCallback;Lcom/android/email/MessagingController;Lcom/android/email/Controller$LegacyListener;)V
    .locals 1

    sput-object p0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    sput-object p1, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-static {}, Lcom/android/email/adapter/ProtocolAdapter;->buildAccountInfoTable()V

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/LegacyAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacy:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocol()V

    sput-object p4, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    sput-object p3, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    new-instance v0, Lcom/android/email/adapter/SncAdapter;

    invoke-direct {v0}, Lcom/android/email/adapter/SncAdapter;-><init>()V

    sput-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mSncAdapter:Lcom/android/email/adapter/ProtocolAdapter;

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocol()V

    return-void
.end method

.method private static isAccountAccessible(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    :cond_0
    const-string v2, "ProtocolAdapter"

    const-string v3, "isAccountAccessible | Context or accountId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/Email;->printStackTrace()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    :cond_2
    const-string v2, "ProtocolAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAccountAccessible | accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v2

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExchangeAccount(J)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPopAccount(J)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSevenAccount(J)Z
    .locals 2

    const/4 v0, 0x6

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSncAccount(J)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterType(J)I

    move-result v2

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation
.end method

.method public changeSmsSettings(J)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "changeSmsSettings() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "copyOneMessageToProvider() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 5

    const/16 v2, 0x18

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0
.end method

.method public deleteAccountPIMData(J)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "deleteAccountPIMData() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 12

    const/4 v11, 0x0

    const-string v0, "ProtocolAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccountSync() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "ProtocolAdapter"

    const-string v1, "Invalid Account Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v11, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v7, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v8, p3, v0}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/Store;->delete()V

    invoke-static {v8}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {p3}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    invoke-static {p3}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v11, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    const-string v0, "Email"

    const-string v1, "Exception while deleting account"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v11, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v11, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public deleteFolder(JLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v0, 0x18

    invoke-direct {v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    return-void
.end method

.method public deleteFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    return-void
.end method

.method public abstract deleteMessage(Ljava/util/HashSet;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation
.end method

.method public deleteMessageSync([JJ)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "deleteMessageSync() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doAddAccount(Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ProtocolAdapter"

    const-string v1, "doAddAccount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected doCleanupInternal()V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "doCleanupInternal() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public emptyTrash(J)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "emptyTrash() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract getAvailableAccounts()V
.end method

.method public getMailboxSyncState(J)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOutOfOffice(J)V
    .locals 6

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    return-void
.end method

.method public abstract getUserConfiguredAccounts()V
.end method

.method public abstract getUserProfile()V
.end method

.method public hasExpiredAccounts()Z
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "hasExpiredAccounts() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public hostChanged(J)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "hostChanged() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract initProtocol()V
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "isAvailable() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public isMailboxSyncable(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadAttachment(JJJI)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "loadAttachment() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadAttachment(JJJJZ)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "loadAttachment() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 9

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide/from16 v2, p7

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    return-void
.end method

.method public abstract loadMessageForView(J)V
.end method

.method public abstract loadMore(J)V
.end method

.method public loadMoreCancel()V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "loadMoreCancel() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadMoreMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0

    return-void
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ProtocolAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyUserAccount() is not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "moveConversationAlways() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    return-void
.end method

.method public moveMessage(J)V
    .locals 0

    return-void
.end method

.method public moveMessage(Ljava/util/HashSet;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "EVENT@CONTR"

    const-string v1, "moveMessage failed since no message ids provided"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/email/adapter/ProtocolAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter$1;-><init>(Lcom/android/email/adapter/ProtocolAdapter;Ljava/util/HashSet;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "JJJZ)V"
        }
    .end annotation

    const-string v0, "ProtocolAdapter"

    const-string v1, "moveMessageToSameAccount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    const-string v0, "ProtocolAdapter"

    const-string v1, "processPendingAccountMoveActions() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processPendingActions(J)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "loadMoreCancel() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "processPendingDeletesForeverSynchronous() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processPendingMoveActions(Ljava/util/HashMap;JJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJJ)V"
        }
    .end annotation

    const-string v0, "ProtocolAdapter"

    const-string v1, "processPendingMoveActions() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0

    return-void
.end method

.method public abstract refreshIRMTemplates(J)V
.end method

.method public renameFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    return-void
.end method

.method public searchOnServer(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "serchOnServer() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "searchOnServerSync() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "sendMeetingEditedResponse() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "sendMeetingResponse() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract sendMessage(JJJ)V
.end method

.method public abstract sendPendingMessages(J)V
.end method

.method public sendRecoveryPassword()V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "sendRecoveryPassword() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 0

    return-void
.end method

.method public serviceLogging(I)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "serviceLogging() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEnabled(ZZ)Z
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "setEnabled() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public setMailboxSyncable(JJZ)V
    .locals 0

    return-void
.end method

.method public setMessageBoolean([JLjava/lang/String;ZJ)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "setMessageBoolean() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMessageRead(JZ)V
    .locals 2

    const-string v0, "ProtocolAdapter"

    const-string v1, "setMessageRead() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 6

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    return-void
.end method

.method public abstract updateMailbox(JJZ)V
.end method

.method public abstract updateMailboxList(J)V
.end method

.method public abstract updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
.end method
