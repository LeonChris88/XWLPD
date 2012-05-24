.class public Landroid/app/enterprise/CallingPolicy;
.super Ljava/lang/Object;
.source "CallingPolicy.java"


# static fields
.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ICallingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CallingPolicy"

    sput-object v0, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "calling_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ICallingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ICallingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ICallingPolicy;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "changeBarringPassword - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallBarringOption(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallBarringOption(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallForwardingOption(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallForwardingOption(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Failed talking with Phone service"

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/ICallingPolicy;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallForwardingOption(ZILjava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/enterprise/ICallingPolicy;->setCallForwardingOption(ZILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
