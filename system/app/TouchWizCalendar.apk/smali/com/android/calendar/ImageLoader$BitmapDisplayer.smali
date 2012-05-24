.class Lcom/android/calendar/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field container:Landroid/view/View;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/calendar/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
