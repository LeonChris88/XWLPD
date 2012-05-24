.class public Landroid/app/ShutdownLoggerManager;
.super Ljava/lang/Object;
.source "ShutdownLoggerManager.java"


# instance fields
.field private final mService:Landroid/app/IShutdownLogger;


# direct methods
.method public constructor <init>(Landroid/app/IShutdownLogger;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    return-void
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public recordShutdownTime()V
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
