.class public Landroid/app/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final LIMIT_NUMBER_OF_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_SMS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_SMS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_SMS_BY_WEEK:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "FAILED: mService = NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkDataCallLimit()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkDataCallLimit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkDataCallLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkEnableUseOfPacketData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfSms(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLimitEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getDataCallLimitEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLimitOfDataCalls(I)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfDataCalls(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getLimitOfDataCalls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingCalls(I)I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingSms(I)I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingCalls(I)I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingSms(I)I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeIncomingCallRestriction()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingCallRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeIncomingSmsRestriction()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingCallRestriction()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingSmsRestriction()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLimitCounter()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetDataCallLimitCounter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLimitCounter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetSmsCount()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetSmsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmergencyCallOnly(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .locals 8

    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfDataCalls(JJJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v7

    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to setLimitOfDataCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingCalls(III)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingSms(III)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingSms(III)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateDataLimitState()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDataLimitState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
