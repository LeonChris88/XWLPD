.class Lcom/android/phone/InVTCallScreen$31;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string v0, "InVTCallScreen"

    const-string v1, "IN SURFACECHANGED method under surfaceCallback ===========================>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "Inside surfaceChanged: Send Live Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v3, "InVTCallScreen"

    const-string v4, "Inside Surface Create."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v3, :cond_3

    const-string v3, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is inside near_endsurhldr surfaceCreated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v6, v6, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3, v10}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    const-string v3, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Height"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.StartCamera for Near end View"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    :goto_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$31$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$31$1;-><init>(Lcom/android/phone/InVTCallScreen$31;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v3, :cond_1

    const-string v3, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is inside far_endsurhldr surfaceCreated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    if-ne v3, v7, :cond_4

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.StartCamera for Far end View"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    :goto_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$31$2;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$31$2;-><init>(Lcom/android/phone/InVTCallScreen$31;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3, v10}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    :goto_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$31$3;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$31$3;-><init>(Lcom/android/phone/InVTCallScreen$31;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :pswitch_8
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_9
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_a
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_b
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string v3, "InVTCallScreen"

    const-string v4, "VTManager.SetPreviewDisplay for Far end View"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v6, v6, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "InVTCallScreen"

    const-string v1, "Into Surface Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$31;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    :cond_0
    return-void
.end method
