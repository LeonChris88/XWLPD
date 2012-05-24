.class public Lcom/android/calendar/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ImageLoader$BitmapDisplayer;,
        Lcom/android/calendar/ImageLoader$PhotosLoader;,
        Lcom/android/calendar/ImageLoader$PhotosQueue;,
        Lcom/android/calendar/ImageLoader$PhotoToLoad;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

.field photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageLoader"

    iput-object v0, p0, Lcom/android/calendar/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;

    new-instance v0, Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-direct {v0, p0}, Lcom/android/calendar/ImageLoader$PhotosQueue;-><init>(Lcom/android/calendar/ImageLoader;)V

    iput-object v0, p0, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    iput-object p1, p0, Lcom/android/calendar/ImageLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/ImageLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/ImageLoader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, -0x1

    if-eq v7, v1, :cond_3

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v7

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v9, :cond_3

    :goto_1
    return-object v9

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v9, v12

    goto :goto_1
.end method

.method private queuePhoto(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-virtual {v1, p3}, Lcom/android/calendar/ImageLoader$PhotosQueue;->Clean(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/android/calendar/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/calendar/ImageLoader$PhotoToLoad;-><init>(Lcom/android/calendar/ImageLoader;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/calendar/ImageLoader$PhotosLoader;

    invoke-direct {v1, p0}, Lcom/android/calendar/ImageLoader$PhotosLoader;-><init>(Lcom/android/calendar/ImageLoader;)V

    iput-object v1, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/calendar/ImageLoader$PhotosLoader;->setPriority(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/android/calendar/ImageLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/android/calendar/ImageLoader$PhotosLoader;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/ImageLoader;->queuePhoto(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ImageLoader;->photoLoaderThread:Lcom/android/calendar/ImageLoader$PhotosLoader;

    invoke-virtual {v0}, Lcom/android/calendar/ImageLoader$PhotosLoader;->interrupt()V

    :cond_0
    return-void
.end method
