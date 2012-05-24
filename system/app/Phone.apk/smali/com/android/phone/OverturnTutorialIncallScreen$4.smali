.class Lcom/android/phone/OverturnTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$400(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$500(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$400(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_0
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
