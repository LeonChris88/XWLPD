.class public Lcom/android/email/data/ThrottlingCursorLoader;
.super Landroid/content/CursorLoader;
.source "ThrottlingCursorLoader.java"


# instance fields
.field private final mThrottle:Lcom/android/email/Throttle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v7, 0x96

    const/16 v8, 0x9c4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/email/data/ThrottlingCursorLoader$1;

    invoke-direct {v2, p0}, Lcom/android/email/data/ThrottlingCursorLoader$1;-><init>(Lcom/android/email/data/ThrottlingCursorLoader;)V

    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/data/ThrottlingCursorLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->callSuperOnContentChanged()V

    return-void
.end method

.method private callSuperOnContentChanged()V
    .locals 0

    invoke-super {p0}, Landroid/content/CursorLoader;->onContentChanged()V

    return-void
.end method


# virtual methods
.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    invoke-super {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/email/data/ThrottlingCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    invoke-super {p0}, Landroid/content/CursorLoader;->onForceLoad()V

    return-void
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    invoke-super {p0}, Landroid/content/CursorLoader;->onStartLoading()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    invoke-super {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    return-void
.end method
