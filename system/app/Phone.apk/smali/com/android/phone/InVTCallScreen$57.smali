.class Lcom/android/phone/InVTCallScreen$57;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "InVTCallScreen"

    const-string v1, "Inside OnSeekBarChangeListener :: onProgressChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom control Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness control Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11700(Lcom/android/phone/InVTCallScreen;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
