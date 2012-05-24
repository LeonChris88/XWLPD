.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    invoke-static {p1, p2}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    array-length v1, v0

    if-eq v1, v3, :cond_0

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p1, v3, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_2

    :try_start_0
    const-string v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const-string v1, "mail.from"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v2, "mail.user"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v2, "user.name"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v2, "mail.host"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_1

    :cond_6
    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method private static isGroupAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSimpleAddress(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, -0x1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v0, -0x1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_20

    move v2, v1

    move v4, v6

    move v7, v9

    move v6, v8

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v8, v6

    move v9, v7

    move v6, v4

    goto :goto_0

    :sswitch_0
    move v4, v6

    move v7, v9

    move v6, v8

    goto :goto_1

    :sswitch_1
    const/4 v7, 0x1

    if-eqz v8, :cond_0

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Too many route-addr"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_0
    if-nez v9, :cond_23

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_2
    add-int/lit8 v6, v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v6, v10, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_2
    move v1, v4

    move v4, v5

    move v5, v6

    :goto_4
    add-int/lit8 v6, v5, 0x1

    move v5, v4

    move v4, v1

    goto :goto_3

    :sswitch_2
    if-nez v5, :cond_3

    const/4 v1, 0x1

    :goto_5
    move v5, v6

    move v12, v1

    move v1, v4

    move v4, v12

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_5

    :sswitch_3
    if-nez v5, :cond_2

    const/4 v1, 0x1

    add-int/lit8 v4, v6, -0x1

    move v12, v5

    move v5, v4

    move v4, v12

    goto :goto_4

    :sswitch_4
    add-int/lit8 v1, v6, 0x1

    move v12, v4

    move v4, v5

    move v5, v1

    move v1, v12

    goto :goto_4

    :cond_4
    if-nez v4, :cond_6

    if-lt v6, v10, :cond_6

    if-eqz v5, :cond_5

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'<\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_6
    const/4 v1, 0x1

    move v5, v6

    move v4, v7

    move v7, v9

    move v12, v6

    move v6, v1

    move v1, v12

    move v13, v2

    move v2, v3

    move v3, v13

    goto :goto_1

    :sswitch_5
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \'>\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :sswitch_6
    const/4 v6, 0x1

    if-ltz v2, :cond_7

    const/4 v4, -0x1

    if-ne v5, v4, :cond_7

    move v5, v1

    :cond_7
    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, v1, 0x1

    :cond_8
    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x1

    :goto_6
    if-ge v4, v10, :cond_9

    if-lez v1, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :sswitch_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :sswitch_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :sswitch_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    if-lez v1, :cond_a

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'(\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_a
    add-int/lit8 v1, v4, -0x1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_20

    move v0, v1

    move v4, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_1

    :sswitch_a
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \')\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :sswitch_b
    const/4 v6, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move v2, v1

    :cond_b
    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x0

    :goto_8
    if-ge v4, v10, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_3

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :sswitch_c
    const/4 v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :sswitch_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    if-lt v4, v10, :cond_22

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :sswitch_e
    const/4 v6, 0x1

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x0

    :goto_a
    if-ge v4, v10, :cond_d

    if-nez v1, :cond_d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :pswitch_0
    const/4 v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    if-lt v4, v10, :cond_22

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'[\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :sswitch_f
    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v7, v9

    goto/16 :goto_1

    :cond_e
    if-eqz v9, :cond_f

    move v4, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_1

    :cond_f
    const/4 v4, -0x1

    if-ne v5, v4, :cond_21

    move v4, v1

    :goto_c
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-nez v6, :cond_10

    or-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_15

    :cond_10
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_12

    :cond_11
    const/4 v4, 0x0

    invoke-static {v2, v8, v4}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    :cond_12
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v3, :cond_13

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const/4 v0, -0x1

    move v3, v0

    :cond_13
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v5, -0x1

    move v7, v9

    goto/16 :goto_1

    :cond_15
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v5, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :sswitch_10
    const/4 v4, 0x1

    if-eqz v9, :cond_16

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Cannot have nested group"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_16
    const/4 v6, 0x1

    move v7, v6

    move v6, v8

    goto/16 :goto_1

    :sswitch_11
    if-nez v9, :cond_17

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unexpected \';\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_17
    const/4 v5, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v2, -0x1

    move v7, v5

    move v5, v2

    move v12, v4

    move v4, v6

    move v6, v12

    goto/16 :goto_1

    :cond_18
    const/4 v4, -0x1

    if-le v2, v4, :cond_1d

    const/4 v4, -0x1

    if-ne v5, v4, :cond_1f

    :goto_e
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-nez v6, :cond_19

    or-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1e

    :cond_19
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1a

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    :cond_1b
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v3, :cond_1c

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    :cond_1c
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_1e
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    move v1, v5

    goto :goto_e

    :cond_20
    move v4, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_1

    :cond_21
    move v4, v5

    goto/16 :goto_c

    :cond_22
    move v1, v4

    move v7, v9

    move v4, v6

    move v6, v8

    goto/16 :goto_1

    :cond_23
    move v12, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_6
        0x29 -> :sswitch_a
        0x2c -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_1
        0x3e -> :sswitch_5
        0x5b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x3e -> :sswitch_3
        0x5c -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x5c -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_5

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_1

    if-ne v1, v7, :cond_2

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    :cond_6
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_7

    const-string v5, "()<>@,;:\\\".[]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "\r\n"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_6

    if-eqz v0, :cond_2

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x2

    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, p1

    const/16 v7, 0x4c

    if-le v1, v7, :cond_4

    const-string v1, "\r\n\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x8

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, -0x1

    if-le v6, v1, :cond_5

    add-int/2addr p1, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sub-int v1, v5, v6

    add-int/lit8 p1, v1, -0x2

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    const/16 v3, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static validate(Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/16 v7, 0x40

    const/16 v6, 0x2c

    const/16 v5, 0x3a

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_10

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v0

    move v0, v1

    :cond_1
    :goto_0
    if-le v2, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_2

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal route-addr"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-le v3, v4, :cond_8

    if-ne v3, v0, :cond_6

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_7

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v5, "\t\n\r "

    const/4 v6, 0x4

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_a

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_9

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal whitespace"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz p2, :cond_f

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing final @domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const-string v5, "\"(),:;<>@[\\]"

    const/16 v6, 0xc

    move v3, v1

    :goto_3
    if-ge v3, v6, :cond_c

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_b

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_e

    :goto_4
    if-ge v1, v6, :cond_e

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_d

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void

    :cond_f
    move-object v0, v2

    move-object v2, p0

    goto :goto_1

    :cond_10
    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eq p0, p1, :cond_0

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3e

    const/16 v2, 0x3c

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3e

    const/16 v2, 0x3c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
