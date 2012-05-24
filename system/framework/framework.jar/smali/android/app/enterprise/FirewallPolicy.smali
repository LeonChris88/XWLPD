.class public Landroid/app/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static final ALLOW:I = 0x1

.field private static final DENY:I = 0x2

.field private static final LOCATION:I = 0x4

.field private static final PROXY:I = 0x3

.field private static final REROUTE:I = 0x0

.field private static final REROUTE_DEST:I = 0x5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IFirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    iput-object p1, p0, Landroid/app/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkEmptyList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkEntries(ILjava/lang/String;)Z
    .locals 20

    const-string v13, "(.*[a-zA-Z]+.*)|(^\\*$)"

    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    const-string v16, "^(remote|local|\\*)$"

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    const/4 v10, 0x0

    :goto_1
    return v10

    :pswitch_1
    move-object v13, v14

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    goto :goto_0

    :pswitch_2
    const-string v13, "(.*[a-zA-Z]+.*)"

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    :pswitch_4
    move-object v13, v14

    goto :goto_0

    :cond_0
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_4

    move-object v4, v6

    array-length v9, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_5

    aget-object v5, v4, v7

    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :cond_5
    if-eqz v12, :cond_7

    move-object v4, v12

    array-length v9, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_8

    aget-object v11, v4, v7

    if-ltz v8, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :cond_8
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private splitStrings(ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move v0, v4

    :cond_0
    :goto_1
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v0, v4

    goto :goto_1

    :pswitch_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    const/4 v5, 0x5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :pswitch_1
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    const/4 v5, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v3}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesAllowRules()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllowRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesDenyRules()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanDenyRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesProxyRules()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanProxyRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesRerouteRules()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanRerouteRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesAllowRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules... 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllowRules()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesDenyRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getDenyRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesOption()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyOption()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledProxy()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getProxyRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRerouteRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getRerouteRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllRulesForUid()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v2, "Application"

    const-string/jumbo v3, "removeIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRules()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesOption(Z)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableRules(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyOption(Z)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableProxy(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IFirewallPolicy;->setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v3, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
