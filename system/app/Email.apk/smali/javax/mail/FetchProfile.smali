.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/FetchProfile$Item;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/ArrayList;

.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 2

    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1

    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 3

    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    iget-object v2, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
