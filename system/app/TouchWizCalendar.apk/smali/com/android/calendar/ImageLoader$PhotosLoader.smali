.class Lcom/android/calendar/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/calendar/ImageLoader;->access$100(Lcom/android/calendar/ImageLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-static {v5}, Lcom/android/calendar/ImageLoader;->access$200(Lcom/android/calendar/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Lcom/android/calendar/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v7, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->container:Landroid/view/View;

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/android/calendar/ImageLoader$BitmapDisplayer;-><init>(Lcom/android/calendar/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V

    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
.end method
