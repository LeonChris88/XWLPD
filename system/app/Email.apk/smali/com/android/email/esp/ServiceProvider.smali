.class public Lcom/android/email/esp/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/esp/ServiceProvider$EasProtocolVersion;,
        Lcom/android/email/esp/ServiceProvider$Provider;,
        Lcom/android/email/esp/ServiceProvider$Transport;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final strTransport:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ServiceProvider"

    sput-object v0, Lcom/android/email/esp/ServiceProvider;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EAS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "POP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IMAP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OZ"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SNC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SEVEN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/esp/ServiceProvider;->strTransport:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEasConfigured([Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v6

    if-ne v5, v6, :cond_2

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkOtherProviderConfigured([Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    const/4 v6, 0x7

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v7}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v6

    if-eq v6, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v5

    if-ne p0, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getAccountProviderName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getAccountProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAccountName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEasProtocolVersion(Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0xff

    if-nez p0, :cond_1

    sget-object v1, Lcom/android/email/esp/ServiceProvider;->TAG:Ljava/lang/String;

    const-string v2, "version is null!"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "2.5"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "12.0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "12.1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v1, "14.0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v1, "14.1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getImageForAccount(Ljava/lang/Integer;[Lcom/android/emailcommon/provider/EmailContent$Account;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/email/esp/ServiceProvider;->TAG:Ljava/lang/String;

    const-string v1, "No Provider match found"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/email/esp/ServiceProvider;->checkEasConfigured([Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0202ce

    goto :goto_0

    :cond_0
    const v0, 0x7f0202cd

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f0202cc

    goto :goto_0

    :cond_2
    const v0, 0x7f0202cb

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0202d0

    goto :goto_0

    :cond_3
    const v0, 0x7f0202cf

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0202d4

    goto :goto_0

    :cond_4
    const v0, 0x7f0202d3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0202d6

    goto :goto_0

    :cond_5
    const v0, 0x7f0202d5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0202d8

    goto :goto_0

    :cond_6
    const v0, 0x7f0202d7

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lcom/android/email/esp/ServiceProvider;->checkOtherProviderConfigured([Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0202d2

    goto :goto_0

    :cond_7
    const v0, 0x7f0202d1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public static getProviderCheckImageResourceId(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getProviderCheckImage()I

    move-result v0

    return v0
.end method

.method public static getProviderFromType(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getProviderId(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getProviderId()I

    move-result v0

    return v0
.end method

.method public static getProviderImageFromSnc(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "Google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0202cf

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "AOL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0202cb

    goto :goto_0

    :cond_2
    const-string v1, "Yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0202d7

    goto :goto_0

    :cond_3
    const-string v1, "MSN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0202d5

    goto :goto_0

    :cond_4
    const-string v1, "Microsoft ActiveSync"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f0202cd

    goto :goto_0

    :cond_5
    const-string v1, "Others"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0202d1

    goto :goto_0

    :cond_6
    const-string v1, "Verizon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0202d3

    goto :goto_0
.end method

.method public static getProviderImageResourceId(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getProviderImage()I

    move-result v0

    return v0
.end method

.method public static getProviderString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderStringFromSnc(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f08055d

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "aol"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "aim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v0, 0x7f08055c

    goto :goto_0

    :cond_4
    const-string v1, "yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f08055f

    goto :goto_0

    :cond_5
    const-string v1, "hotmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "msn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "live"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const v0, 0x7f08055e

    goto :goto_0

    :cond_7
    const-string v1, "Verizon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f080561

    goto :goto_0

    :cond_8
    const-string v1, "Others"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f080560

    goto :goto_0

    :cond_9
    const-string v1, "Corporate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f08055b

    goto :goto_0
.end method

.method public static getProviderStringFromType(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/email/esp/AbstractProvider;->getInstance(I)Lcom/android/email/esp/AbstractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/esp/AbstractProvider;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSncProvider(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0xff

    const-string v1, "Google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "AOL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const-string v1, "Yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "MSN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const-string v1, "Microsoft ActiveSync"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "Others"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-string v1, "Verizon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getTransportFromType(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getTransportStringFromType(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/email/esp/ServiceProvider;->strTransport:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "INVALID"

    goto :goto_0
.end method

.method public static isProviderTypeAol(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "aol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isProviderTypeYahoo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "yahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static makeType(II)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
