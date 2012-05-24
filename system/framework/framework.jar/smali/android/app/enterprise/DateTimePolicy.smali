.class public Landroid/app/enterprise/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDateTimePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DateTimePolicy"

    sput-object v0, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date_time_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDateTimePolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    return-void
.end method


# virtual methods
.method public getAutomaticTime()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getAutomaticTime()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getDateFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDateFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 6

    :try_start_0
    iget-object v4, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v4}, Landroid/app/enterprise/IDateTimePolicy;->getDateTime()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    sget-object v4, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at DateTime policy API getDateTime"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDaylightSavingTime()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getDaylightSavingTime()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDaylightSavingTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getTimeFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getTimeZone()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticTime(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setAutomaticTime(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setDateFormat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setDateFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDateTime(IIIIII)Z
    .locals 5

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p6}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroid/app/enterprise/IDateTimePolicy;->setDateTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at DateTime policy API setDateTime"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTimeFormat(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setTimeFormat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
